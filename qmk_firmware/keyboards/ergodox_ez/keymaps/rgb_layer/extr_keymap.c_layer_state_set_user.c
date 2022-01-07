
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int rgb_layer_change; } ;




 int biton32 (int ) ;
 int ergodox_board_led_off () ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 int rgblight_mode_noeeprom (int) ;
 int rgblight_sethsv_noeeprom_blue () ;
 int rgblight_sethsv_noeeprom_cyan () ;
 int rgblight_sethsv_noeeprom_green () ;
 int rgblight_sethsv_noeeprom_orange () ;
 int rgblight_sethsv_noeeprom_pink () ;
 int rgblight_sethsv_noeeprom_red () ;
 int rgblight_sethsv_noeeprom_white () ;
 int rgblight_sethsv_noeeprom_yellow () ;
 TYPE_1__ user_config ;

uint32_t layer_state_set_user(uint32_t state) {
  ergodox_board_led_off();
  ergodox_right_led_1_off();
  ergodox_right_led_2_off();
  ergodox_right_led_3_off();
  switch (biton32(state)) {
    case 128:
        ergodox_right_led_1_on();
        if (user_config.rgb_layer_change) { rgblight_sethsv_noeeprom_red(); rgblight_mode_noeeprom(1); }
        break;
    case 129:
        ergodox_right_led_2_on();
        if (user_config.rgb_layer_change) { rgblight_sethsv_noeeprom_green(); rgblight_mode_noeeprom(1); }
        break;
    case 3:
        ergodox_right_led_3_on();
        if (user_config.rgb_layer_change) { rgblight_sethsv_noeeprom_blue(); rgblight_mode_noeeprom(1); }
        break;
    case 4:
        ergodox_right_led_1_on();
        ergodox_right_led_2_on();
        if (user_config.rgb_layer_change) { rgblight_sethsv_noeeprom_orange(); rgblight_mode_noeeprom(1); }
        break;
    case 5:
        ergodox_right_led_1_on();
        ergodox_right_led_3_on();
        if (user_config.rgb_layer_change) { rgblight_sethsv_noeeprom_yellow(); rgblight_mode_noeeprom(1); }
        break;
    case 6:
        ergodox_right_led_2_on();
        ergodox_right_led_3_on();
        if (user_config.rgb_layer_change) { rgblight_sethsv_noeeprom_pink(); rgblight_mode_noeeprom(1); }
        break;
    case 7:
        ergodox_right_led_1_on();
        ergodox_right_led_2_on();
        ergodox_right_led_3_on();
        if (user_config.rgb_layer_change) { rgblight_sethsv_noeeprom_white(); rgblight_mode_noeeprom(1); }
        break;
    default:
        if (user_config.rgb_layer_change) { rgblight_sethsv_noeeprom_cyan(); rgblight_mode_noeeprom(1); }
        break;
    }
  return state;
}
