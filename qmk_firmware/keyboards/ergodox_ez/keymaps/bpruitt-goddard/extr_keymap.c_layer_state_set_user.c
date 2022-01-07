
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ LAYER_ON (int ) ;
 int MAC ;
 int NUM ;
 int QWERTY ;
 int current_layer_state ;
 scalar_t__ is_macro1_recording ;
 int led_1_off () ;
 int led_1_on () ;
 int led_2_off () ;
 int led_2_on () ;
 int led_3_off () ;
 int led_3_on () ;

uint32_t layer_state_set_user(uint32_t state) {
  current_layer_state = state;

  if (is_macro1_recording) {
    led_1_on();
    led_2_on();
    led_3_on();
    return state;
  }

  if (LAYER_ON(NUM)) {
    led_1_on();
  } else {
    led_1_off();
  }

  if (LAYER_ON(MAC)) {
    led_2_on();
  } else {
    led_2_off();
  }

  if (LAYER_ON(QWERTY)) {
    led_3_on();
  } else {
    led_3_off();
  }

  return state;
}
