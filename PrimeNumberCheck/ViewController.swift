//
//  ViewController.swift
//  PrimeNumberCheck
//
//  Created by dit06 on 2019. 4. 11..
//  Copyright © 2019년 dit06. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txtNum: UITextField!
    @IBOutlet weak var txtResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtNum.delegate = self;
        txtNum.clearButtonMode = UITextField.ViewMode.always;
        txtNum.placeholder = "숫자를 입력하시오";
    }
    @IBAction func btnCheck(_ sender: UIButton) {
        
        if let num = Int(txtNum.text!){
            var isPrime = true;
        
        if num <= 0 {
            txtResult.text = "input correct value!"
            txtNum.text = ""
            return
        }
            
        
        if num == 1{
            isPrime = false
        }
            if (num != 1 && num != 2) {
            for i in 2 ..< num {
                if (num % i == 0){
                    isPrime = false
                }
            }
        }
        
        
            if(isPrime == true){
                txtResult.text = "This Number is prime number"
            }
            else if (isPrime == false){
                txtResult.text = "This Number is not prime number"
            }
        
        
        txtNum.text = ""
        txtNum.resignFirstResponder();
        }else{
            txtResult.text = "input correct value!"
            txtNum.text = ""
        }
    }
    
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{ // called when 'return' key pressed. return NO to ignore.
        self.view.backgroundColor = UIColor.green;
        txtNum.resignFirstResponder();
        return true;
    }

}
