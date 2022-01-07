
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int biton32 (int ) ;
 int ergodox_board_led_off () ;
 int ergodox_board_led_on () ;
 int ergodox_led_all_on () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 int layer_state ;

void matrix_scan_user(void) {

    uint8_t layer = biton32(layer_state);

    ergodox_board_led_on();
    ergodox_led_all_on();

    ergodox_board_led_off();
    ergodox_right_led_1_off();
    ergodox_right_led_2_off();
    ergodox_right_led_3_off();


    switch (layer)
    {
    case 129:
      ergodox_right_led_1_on();
      break;
    case 135:
      ergodox_right_led_2_on();
      break;
    case 133:
      ergodox_right_led_3_on();
      break;
    case 134:
      ergodox_right_led_1_on();
      ergodox_right_led_2_on();
      break;
    case 136:

      break;
    case 137:

      break;
    case 138:
      ergodox_right_led_2_on();
      ergodox_right_led_3_on();
      break;
    case 132:
      ergodox_right_led_1_on();
      ergodox_right_led_2_on();
      ergodox_right_led_3_on();
      break;
    case 128:
      ergodox_right_led_1_on();
      ergodox_right_led_3_on();
      break;
    case 131:
      ergodox_right_led_1_on();
      ergodox_right_led_2_on();
      ergodox_right_led_3_on();
      break;
    case 130:
      ergodox_right_led_2_on();
      ergodox_right_led_3_on();
    default:
      break;
    }
}
