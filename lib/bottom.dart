import 'package:flutter/material.dart';
import 'package:nov4/chat.dart';
import 'package:nov4/comu.dart';
import 'package:nov4/create.dart';
import 'package:nov4/home.dart';
import 'package:nov4/inbox.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
 
 
    int selectedIndex=0;
    final List<Widget> screens=[
      HomeScreen(),
      CommunityScreen(),
      ChatScreen(),
      CreateScreen(),
      InboxScreen()
    ];
    void onItemTapped(int index){
      setState(() {
        selectedIndex=index;
      });
    }
     @override
      Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor:const Color.fromARGB(255, 245, 6, 6),
        unselectedItemColor: const Color.fromARGB(255, 141, 235, 153),
        items: [
   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
   BottomNavigationBarItem(icon: Icon(Icons.group),label: "Community"),
   BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),
   BottomNavigationBarItem(icon: Icon(Icons.create),label: "create"),
   BottomNavigationBarItem(icon: Icon(Icons.inbox),label: "Inbox"),
   
        ]),
    );
  }
}