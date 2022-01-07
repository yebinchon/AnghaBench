
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PANEL ;


 int EOF ;

 int TRUE ;
 int box (int ,int,int ) ;
 int cooling_device_window ;
 int data_panel ;
 int dialogue_on ;
 int * dialogue_panel ;
 int dialogue_window ;
 int doupdate () ;
 int handle_input_choice (int) ;
 int input_lock ;
 int keypad (int ,int ) ;
 scalar_t__ panel_userptr (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int show_control_w () ;
 int show_data_w () ;
 int show_dialogue () ;
 int tmon_exit ;
 int * top ;
 int top_panel (int *) ;
 int update_panels () ;
 int wgetch (int ) ;

void *handle_tui_events(void *arg)
{
 int ch;

 keypad(cooling_device_window, TRUE);
 while ((ch = wgetch(cooling_device_window)) != EOF) {
  if (tmon_exit)
   break;



  if (!data_panel || !dialogue_panel ||
   !cooling_device_window ||
   !dialogue_window) {

   continue;
  }
  pthread_mutex_lock(&input_lock);
  if (dialogue_on) {
   handle_input_choice(ch);

   if (ch == 'q' || ch == 'Q')
    ch = 0;
  }
  switch (ch) {
  case 128:
   box(cooling_device_window, 10, 0);
   break;
  case 9:
   top = (PANEL *)panel_userptr(top);
   top_panel(top);
   if (top == dialogue_panel) {
    dialogue_on = 1;
    show_dialogue();
   } else {
    dialogue_on = 0;

    show_data_w();
    show_control_w();
   }
   break;
  case 'q':
  case 'Q':
   tmon_exit = 1;
   break;
  }
  update_panels();
  doupdate();
  pthread_mutex_unlock(&input_lock);
 }

 if (arg)
  *(int *)arg = 0;

 return ((void*)0);
}
