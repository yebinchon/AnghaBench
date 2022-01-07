
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAYOFF ;
 scalar_t__ ScreenOffInterval ;
 int counterst ;
 int draw_ui () ;
 int last_flush ;
 int matrix_scan_user () ;
 int queue_for_send ;
 int send_command (int ) ;
 scalar_t__ timer_elapsed (int ) ;

void matrix_scan_kb(void) {
if (queue_for_send) {



   queue_for_send = 0;
  }





  if (counterst == 0) {

  }
  counterst = (counterst + 1) % 1024;

 matrix_scan_user();
}
