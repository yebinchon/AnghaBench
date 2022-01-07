
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_SCR () ;
 int CURSOR_HIDE () ;
 int CURSOR_HOME () ;
 int CURSOR_SAVE () ;
 int SCREEN_SAVE () ;
 scalar_t__ clearScr ;
 int nmstermio_set_terminal (int ) ;

void nmstermio_init_terminal(void) {


 nmstermio_set_terminal(0);


 if (clearScr) {
  CURSOR_SAVE();
  SCREEN_SAVE();
  CLEAR_SCR();
  CURSOR_HOME();
  CURSOR_HIDE();
 }
}
