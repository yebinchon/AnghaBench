
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAPSLOCKLEDPIN ;
 int NUMLOCKLEDPIN ;
 int SCROLLLOCKLEDPIN ;
 int dynamic_macro_init () ;
 int setPinOutput (int ) ;

void keyboard_pre_init_user(void) {

  setPinOutput(NUMLOCKLEDPIN);
  setPinOutput(CAPSLOCKLEDPIN);
  setPinOutput(SCROLLLOCKLEDPIN);

  dynamic_macro_init();
}
