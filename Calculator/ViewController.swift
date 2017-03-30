//
//  ViewController.swift
//  Calculator
//
//  Created by Кайра Сраилов on 30.03.17.
//  Copyright © 2017 voody. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var memory: Int = 0
    var action = " "

    @IBAction func numbers(_ sender: Any) {
        label.text = label.text! + String((sender as AnyObject).tag)
    }
    @IBAction func AC(_ sender: Any) {
        label.text = ""
    }
    @IBAction func minus(_ sender: Any) {
        memory = Int(label.text!)!
        action = "minus"
        label.text = ""
    }
    @IBAction func multiply(_ sender: Any) {
        memory = Int(label.text!)!
        action = "multiply"
        label.text = ""
    }
    
    @IBAction func divide(_ sender: Any) {
        memory = Int(label.text!)!
        action = "divide"
        label.text = ""
    }
    
    @IBAction func plus(_ sender: Any) {
        memory = Int(label.text!)!
        action = "plus"
        label.text = ""
    }
    

    @IBAction func answ(_ sender: Any) {
        var answ = ""
        var now = Int(label.text!)
        if (action == "plus"){
            
             answ = String(memory + now!)
            
            label.text = answ
        }
        if (action == "divide"){
            
            answ = String(memory / now!)
            
            label.text = answ
        }
        
        if (action == "minus"){
            
            answ = String(memory - now!)
            
            label.text = answ
        }
        if (action == "multiply"){
            
            answ = String(memory * now!)
            
            label.text = answ
        }
        
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

