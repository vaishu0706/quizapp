import "package:flutter/material.dart";
  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget{
    
      const MyApp({super.key});
      @override
      Widget build(BuildContext context){
         return const  MaterialApp(
          debugShowCheckedModeBanner: false,
          home:QuizApp(),
        );
      }
  }
  class QuizApp extends StatefulWidget{
    const QuizApp({super.key});
  
    @override
    State createState() => _QuizAppState();
  }

    class _QuizAppState extends State {
      List<Map>allquestions =[
     {
      "Question": "who is the founder of Apple?",
      "options":["Steve Job","Lary page","Bill Gates","Mark Zukerburg"],
       "correctAnswer":0,
       "Explanation":"Founder of Apple is Steve job",
    },
    {
      "Question": "who is the founder of Google?",
      "options":["Ravindranath ","Elon Musk","Deniis Ritchie","Lary Page"],
      "correctAnswer":3,
      "Explanation":"Founder of Google is Lary Page.",
    },

    {
      "Question":"who is the founder of Microsoft?",
      "options":[" Tesla"," Steve Job"," Linux Torvals","Bill Gates"],
      "correctAnswer":3,
      "Explanation":"Founder of Microsoft is Bill Gates.",
    },

    {
      "Question":"which datatype is used to store integer value?",
      "options":["int","float","double","num"],
      "correctAnswer":0,
      "Explanation":"In Dart Integer can be store in either num or int , but specific Datatype is int.",
    },

    {
      "Question":"which of following constructor not used in java?",
      "options":["no-args constructor","argument constructor","default constructor","named constructor",],
      "correctAnswer":3,
      "Explanation":"In Dart Named Constructor is used not in Java.",
    },
      ];
      
      int currentindex = 0;
      int selectedAnswerIndex  = -1;
      int count = 0;
      

      WidgetStateProperty<Color?>checkAnswer(int answerIndex){

          if(selectedAnswerIndex != -1) {

            if(answerIndex == allquestions[currentindex]["correctAnswer"]){
              return const WidgetStatePropertyAll(Colors.green);
           

            } else if(selectedAnswerIndex == answerIndex){
              return const WidgetStatePropertyAll(Colors.red);

            } else {
              return const WidgetStatePropertyAll(null);
            }

           } else {
            return const WidgetStatePropertyAll(null);
          }
      }

     bool questionPage = true;
 
      @override
      Widget build(BuildContext context){
          return isQuestionScreen();
      } 
      Scaffold isQuestionScreen(){
        if (questionPage == true){
          return Scaffold(

            appBar: AppBar(
              title: const Text(
                "QuizApp:",
   
                style: TextStyle (
                  fontSize: 30,
                  fontWeight:FontWeight.w900,
                  color: Colors.purple,
              ),
              ),
              centerTitle: true,
              backgroundColor: Colors.blue,
              foregroundColor: Colors.red,
              shadowColor: Colors.blue,
            
            ),

            body:Column(
              children: [
                const SizedBox(
                  height:70,
                ),

                Row(
                  children: [
                   const SizedBox(
                      width:100,
                    ),
                
                   Text(
                    "Question:${currentindex+1}/${allquestions.length}",
                    style:const TextStyle(
                      fontSize:35,
                      fontWeight:FontWeight.w700,
                    ),
                    ),              
                  ],
                  ),
                
               const SizedBox(
                  height:70,          
                ),

                SizedBox(
                  width: 380,
                  height: 80,
                  child:Text(
                    allquestions[currentindex]['Question'],
                    style:const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),

                SizedBox(
                  height: 50,
                  width: 340,
                  child:ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(0),
                    ),
                   
                    onPressed: (){
                      if(selectedAnswerIndex == -1){
                        selectedAnswerIndex = 0;
                        
                          setState(() {
                            
                          });
                      } 
                             

                    },
                    child:Text(
                      "A . ${allquestions[currentindex]['options'][0]}",
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        color: Colors.purple,
                        
                      ),
                                          ),
                  ),
                ),

                 const SizedBox(
                  height: 30,
                ),

                
                 SizedBox(
                  height:50,
                  width:340,
                  child:ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: checkAnswer(1),
                    ),
                    onPressed:() {

                      if(selectedAnswerIndex == -1) {
                        selectedAnswerIndex = 1;
                 
                              setState(() {});
                      }                          
                      
                    },
                     child: Text(
                      "B . ${allquestions[currentindex]['options'][1]}",
                      style:const TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                       
                      ),
                     ),
                     ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    width:340,
                    height: 50,
                    child:ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: checkAnswer(2),
                      ),

                      onPressed:(
                      ){
                        if(selectedAnswerIndex == -1) {
                          selectedAnswerIndex = 2;
                          
                           setState(() {} );
                        }
                        
                      },

                     child: Text(
                      "C . ${allquestions[currentindex]['options'][2]}",
                      style:const  TextStyle(
                        fontSize: 24,
                        color: Colors.purple,
                        fontWeight: FontWeight.w400,
                      ),
                     ),
                    
                    ),
                     ),
                  
            
                  const SizedBox(
                    height: 30,
                  ),

                  SizedBox(
                    height: 50,
                    width: 340,
                    child:ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: checkAnswer(3),
                      ),
                       onPressed: (){

                        if(selectedAnswerIndex == -1) {
                          selectedAnswerIndex = 3;
                        
                           setState(() {} );
                        }
                       
                      },
                      child:Text(
                        "D . ${allquestions[currentindex]['options'][3]}",
                         style: const TextStyle(
                          fontSize: 23,
                          color: Colors.purple,
                          fontWeight: FontWeight.w400,
                          
                        ),
                      ),
                    ),
                  ), 

                  const SizedBox(
                    height: 30,
                  ),

              SizedBox(
                child: (selectedAnswerIndex != -1)?
                Text(
                  "Explanation:${allquestions[currentindex]["Explanation"]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  
                )
                :const Text(""),
              ),   
              ],
            
            ),            
            floatingActionButton:  FloatingActionButton(
              onPressed: () {

                
                if(selectedAnswerIndex !=-1){
                  
                   if(selectedAnswerIndex == allquestions[currentindex]["correctAnswer"]){
                             count++;
                             setState(() {
                               
                             });                
                   }
          
                if(currentindex < allquestions.length-1){
                  currentindex++;
 
                } else {              
                  questionPage = false;                  
                  }
                }  
                selectedAnswerIndex = -1;
                setState(() {                
                });          
              },          
              backgroundColor: Colors.blue,
              child:const Icon(
                Icons.forward,
                color: Colors.orange,
              ),
            ),
          );        
         } else {
        return Scaffold(

          appBar: AppBar(
            title:const Text("Quiz End"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://static.vecteezy.com/system/resources/thumbnails/032/999/982/small_2x/realistic-golden-trophy-ai-generative-free-png.png",
                height: 300,
                ),
          

                const SizedBox(height: 30 ),
                const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
               ),
               const SizedBox(
                height: 40),               
                  Text("Score:$count/${allquestions.length}",
                 style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                 ),
                 ),                             
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
             questionPage = true;
             currentindex = 0;
             selectedAnswerIndex = -1;
             count = 0;
                          
             setState(() {            
             });
            },            
            child:const Text("Reset:"),              
        ), 
        );
      }
      }
    //build
    }