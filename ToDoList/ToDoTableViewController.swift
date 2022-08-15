//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Scholar on 8/15/22.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    var listOfToDo : [ToDoClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfToDo = createToDo()
    


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    func createToDo() -> [ToDoClass] {

    let swiftToDo = ToDoClass()
    swiftToDo.description = "Go for a walk"
    swiftToDo.important = true
        
    let wiftToDo = ToDoClass()
    wiftToDo.description = "Make coffee"
    wiftToDo.important = true
    
    let dogToDo = ToDoClass()
    dogToDo.description = "Drink water"
    // important is set to false by default
    return [swiftToDo, dogToDo, wiftToDo]
        
   
        
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachToDo = listOfToDo[indexPath.row]
        
        if eachToDo.important {
        cell.textLabel?.text = "" + eachToDo.description
        } else {
        cell.textLabel?.text = eachToDo.description
        }

        return cell
    }
    

   
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}







