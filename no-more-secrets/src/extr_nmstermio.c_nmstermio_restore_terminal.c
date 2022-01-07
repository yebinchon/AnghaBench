
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CURSOR_RESTORE () ;
 int CURSOR_SHOW () ;
 int SCREEN_RESTORE () ;
 scalar_t__ clearScr ;
 int nmstermio_set_terminal (int) ;

void nmstermio_restore_terminal(void) {


 if (clearScr) {
  SCREEN_RESTORE();
  CURSOR_SHOW();
  CURSOR_RESTORE();
 }


 nmstermio_set_terminal(1);
}
