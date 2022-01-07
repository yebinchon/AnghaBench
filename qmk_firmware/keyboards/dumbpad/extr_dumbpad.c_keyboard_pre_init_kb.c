
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAYER_INDICATOR_LED_0 ;
 int LAYER_INDICATOR_LED_1 ;
 int keyboard_pre_init_user () ;
 int setPinOutput (int ) ;

void keyboard_pre_init_kb(void) {

  setPinOutput(LAYER_INDICATOR_LED_0);
  setPinOutput(LAYER_INDICATOR_LED_1);

  keyboard_pre_init_user();
}
