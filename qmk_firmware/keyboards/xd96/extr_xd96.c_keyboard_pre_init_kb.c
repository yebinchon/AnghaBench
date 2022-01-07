
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAPS_PIN ;
 int NUMLOCK_PIN ;
 int keyboard_pre_init_user () ;
 int setPinOutput (int ) ;

void keyboard_pre_init_kb(void) {
  setPinOutput(CAPS_PIN);
  setPinOutput(NUMLOCK_PIN);

  keyboard_pre_init_user();
}
