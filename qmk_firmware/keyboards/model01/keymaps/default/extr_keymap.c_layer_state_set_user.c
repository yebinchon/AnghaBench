
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NUM ;
 int set_led_to ;
 int set_numpad_colours (int,int *) ;

uint32_t layer_state_set_user(uint32_t state) {
  if (state & (1<<NUM)) {
    set_numpad_colours(1, &set_led_to);
  } else {
    set_numpad_colours(0, &set_led_to);
  }

  return state;
}
