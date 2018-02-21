//
//  BillsViewController.swift
//  Split
//
//  Created by Trevin Wisaksana on 18/02/2018.
//  Copyright © 2018 Trevin Wisaksana. All rights reserved.
//

import UIKit

class BillsViewController: UIViewController {
    
    //---- IBOutlets ----//
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var currentContributionTextField: UITextField!
    @IBOutlet weak var numberOfPeopleTextField: UITextField!
    @IBOutlet weak var resultMessageLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    //---- Lifecycle ----//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        curveButtonEdges() // Decorates the calculate button to curve the edges.
        clearTextFields() // When the app starts, the text fields should be empty
    }
    
    //---- Button Actions ----//
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        
        // TASK 1: Find the amount of money to be split and store it in a variable
        // Insert code here...
        
        // TASK 2: Substract the amount contributed, if any, by the share and store the result in a variable
        // Insert code here...
        
        // TASK 3: Display the result on the Result Label (Line 19)
        // Insert code here...

    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        // TASK 4: Delete all the text fields
        // Insert code here...
        
    }
    
    //---- Calculations Logic ----//
    
    func billAmount() -> Double {
        return Double(billAmountTextField.text ?? "0") ?? 0
    }
    
    func numberOfPeople() -> Double {
        return Double(numberOfPeopleTextField.text ?? "0") ?? 0
    }
    
    func amountContributed() -> Double {
        return Double(currentContributionTextField.text ?? "0") ?? 0
    }
    
    //---- User Interface ----//
    
    func display(result: Double) {
        resultLabel.text = "PHP \(result)"
    }
    
    func clearTextFields() {
        billAmountTextField.text?.removeAll()
        numberOfPeopleTextField.text?.removeAll()
        currentContributionTextField.text?.removeAll()
        resultMessageLabel.text?.removeAll()
        resultLabel.text = "PHP ---"
    }
    
    func curveButtonEdges() {
        calculateButton.layer.cornerRadius = 5
    }
    
}
