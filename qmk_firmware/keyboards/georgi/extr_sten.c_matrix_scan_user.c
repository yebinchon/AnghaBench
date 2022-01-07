
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ QWERTY ;
 scalar_t__ REP_DELAY ;
 scalar_t__ REP_INIT_DELAY ;
 scalar_t__ cMode ;
 int clear_keyboard () ;
 int inChord ;
 int processChord (int) ;
 int repEngaged ;
 int repTimer ;
 int send_keyboard_report () ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

void matrix_scan_user(void) {


 if (cMode != QWERTY || !inChord) return;



 if (repEngaged && timer_elapsed(repTimer) > REP_DELAY) {

  processChord(0);


  send_keyboard_report();
  clear_keyboard();
  repTimer = timer_read();
 }

 if (!repEngaged && timer_elapsed(repTimer) > REP_INIT_DELAY) {
  repEngaged = 1;
 }

}
