
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int layer_state_t ;


 int RGBLIGHT_COLOR_LAYER_0 ;
 int RGBLIGHT_COLOR_LAYER_1 ;
 int RGBLIGHT_COLOR_LAYER_2 ;
 int RGBLIGHT_COLOR_LAYER_3 ;
 int RGBLIGHT_COLOR_LAYER_4 ;
 int RGBLIGHT_COLOR_LAYER_5 ;
 int RGBLIGHT_COLOR_LAYER_6 ;
 int RGBLIGHT_COLOR_LAYER_7 ;
 int biton32 (int ) ;
 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 int rgblight_init () ;
 int rgblight_setrgb (int ) ;

layer_state_t layer_state_set_user(layer_state_t state) {
  ergodox_board_led_off();
  ergodox_right_led_1_off();
  ergodox_right_led_2_off();
  ergodox_right_led_3_off();

  uint8_t layer = biton32(state);
  switch (layer) {
      case 0:







        break;
      case 1:
        ergodox_right_led_1_on();



        break;
      case 2:
        ergodox_right_led_2_on();



        break;
      case 3:
        ergodox_right_led_3_on();



        break;
      case 4:
        ergodox_right_led_1_on();
        ergodox_right_led_2_on();



        break;
      case 5:
        ergodox_right_led_1_on();
        ergodox_right_led_3_on();



        break;
      case 6:
        ergodox_right_led_2_on();
        ergodox_right_led_3_on();



        break;
      case 7:
        ergodox_right_led_1_on();
        ergodox_right_led_2_on();
        ergodox_right_led_3_on();



        break;
      default:
        break;
    }

  return state;
}
