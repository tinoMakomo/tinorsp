import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_core/firebase_core.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {



   
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      initialRoute: '/',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

  class MyHomePage extends StatelessWidget {
    final Dbref= FirebaseDatabase.instance.reference();

    static String state="";
    static String state1="";

     @override
  Widget build(BuildContext context) {


    var con1=Container(
      child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
children:<Widget>[
Container(
  width: 100,
  height: 50,
  
  child:RaisedButton(
    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
    elevation: 6,

  color: Colors.blue,
  child: Text('ON'),
  onPressed: (){
     
     
           
     Dbref.child("1").set({
             
             'State':"ON",
          
           } );
          
         state="ON";
          
         


           
        
  },
),
),

SizedBox(width: 30,),

Container(
  decoration: BoxDecoration(
    

    
  ), 
  width: 100,
  height: 50,
  
  child:RaisedButton(
    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
    elevation: 6,
    color: Colors.blue,
  child: Text('OFF'),
  onPressed: (){

    
                 
                
    Dbref.child("1").set({
             
             'State':"OFF"

           } );
                  
        state= "OFF";
               
          
 
  },
)

),]
         )  ,
    );


    var con2 =Container(  

      child: Text(state,style: TextStyle(fontSize: 25,color: Colors.white),),
  decoration: BoxDecoration(
    color: Colors.black54
  ),
           
           width: 100,

           height: 70,
           
           
         );


         var con3=Container(
            child:Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children :<Widget>[

Container(
  width: 100,
  height: 50,
  
  child:RaisedButton(
    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
    elevation: 6,

  color: Colors.blue,
  child: Text('ON'),
  onPressed: (){
      
          
           
     Dbref.child("2").set({
             
             'State2':"ON",
          
           } );
          
        

         
            state1="ON";
           
        
  },
),
),
SizedBox(height: 10,),
SizedBox(width: 20,),
Container(
  decoration: BoxDecoration(
    

    
  ), 
  width: 100,
  height: 50,
  
  child:RaisedButton(
    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
    elevation: 6,
    color: Colors.blue,
  child: Text('OFF'),
  onPressed: (){

    
                 
                
    Dbref.child("2").set({
             
             'State2':"OFF"

           } );
                  
        
         state1="0FF";     
          
 
  },
)

),



]) ,
         );



   var con4=Container(  
     child: Text(state1,style: TextStyle(fontSize: 25,color: Colors.white),),
  decoration: BoxDecoration(
    color: Colors.black54
  ),
           
           width: 100,

           height: 70,
           
           
         );


    return Scaffold(
      appBar: AppBar(
        title: Text('Monitor'),
        backgroundColor: Colors.blue,
      ),

      body: Center(

        child : Form(
          

          
            
        child:ListView(
          padding: EdgeInsets.only(left: 50,right: 50),
        

          children: <Widget>[

           


         
         SizedBox(height: 50,),
Text('Power_line1'),
con2,
SizedBox(height: 10,),
con1,

         SizedBox(height: 10,),
       
 
SizedBox(height: 30,),



Text('Power_line2'),
SizedBox(height: 10,),
con4,


SizedBox(height: 10,),
con3,
           


          ]
        )
      )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
    onPressed: (){

Navigator.of(context).popAndPushNamed('/');

    },
      ),
    );
  }

       
  }
  