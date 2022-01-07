
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





 int biton32 (int ) ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;

uint32_t layer_state_set_user_local(uint32_t state) {
  ergodox_right_led_1_off();
  ergodox_right_led_2_off();
  ergodox_right_led_3_off();
  switch (biton32(state)) {
  case 128:
    ergodox_right_led_3_on();
    break;
  case 130:
    ergodox_right_led_1_on();
    break;
  case 129:
    ergodox_right_led_2_on();
    break;
  default: break;
  }
  return state;
}
