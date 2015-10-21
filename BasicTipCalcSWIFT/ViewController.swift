//
//  ViewController.swift
//  BasicTipCalcSWIFT
//
//  Created by Zareek Galvan on 10/20/15.
//  Copyright © 2015 Trisquel Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMealCost: UITextField!
    @IBOutlet weak var txtTip: UITextField!
    
    @IBOutlet weak var lblTipCalculated: UILabel!
    
    var mealCost = ""
    var tipPercentage = ""
    var answer : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCalclate(sender: UIButton) {
        calculateTip()
    }

    @IBAction func btnClear(sender: UIButton) {
        
    }
    
    func calculateTip() -> Bool {
        mealCost = txtMealCost.text!
        tipPercentage = txtTip.text!
        var fMealCost = (mealCost as NSString).floatValue
        var fTipPercentage = (tipPercentage as NSString).floatValue
        
        answer = fMealCost * (fTipPercentage * 0.01)
        
        lblTipCalculated.text = String(answer)
        
        return true
    }
}

