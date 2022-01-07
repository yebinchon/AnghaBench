
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int biton32 (int ) ;
 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int layer_state ;
 int lcd_backlight_hal_color (int,int,int ) ;

void matrix_scan_user(void) {

    uint8_t layer = biton32(layer_state);

    switch (layer) {

    case 0:
      ergodox_board_led_off();
      ergodox_right_led_1_off();
      ergodox_right_led_2_off();
      ergodox_right_led_3_off();




      break;
    case 1:
      ergodox_right_led_1_on();

      ergodox_board_led_off();
      ergodox_right_led_2_off();
      ergodox_right_led_3_off();



      break;
    case 2:
      ergodox_right_led_2_on();

      ergodox_board_led_off();
      ergodox_right_led_1_off();
      ergodox_right_led_3_off();



      break;
    default:

            break;
    }

}
