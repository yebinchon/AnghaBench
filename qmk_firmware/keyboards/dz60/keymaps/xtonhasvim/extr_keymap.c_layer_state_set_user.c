
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



 int biton32 (scalar_t__) ;
 int user_led_off () ;
 int user_led_on () ;

uint32_t layer_state_set_user(uint32_t state) {
  static uint32_t last_state = 0;

  if(last_state != state) {
    switch (biton32(state)) {
    case 128:
      user_led_on();
      break;
    default:
      user_led_off();
      break;
    }
    last_state = state;
  }
  return state;
}
