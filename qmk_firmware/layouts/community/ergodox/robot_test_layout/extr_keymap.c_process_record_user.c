
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int EZ_RGB (int) ;
 int KC_1 ;
 int KC_2 ;
 int KC_3 ;
 int KC_4 ;
 int KC_EQL ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 int register_code (int ) ;
 int rgblight_toggle () ;
 int status_led1_on ;
 int status_led2_on ;
 int status_led3_on ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {

    case 130:
      if (record->event.pressed) {




      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {




      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {




      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {




      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {




      }
      return 0;
      break;
    case 135:
      if (record->event.pressed) {
        if(status_led1_on) {
        ergodox_right_led_1_off();
        status_led1_on = 0;
        } else {
        ergodox_right_led_1_on();
        status_led1_on = 1;
        }
      }
      return 0;
      break;
    case 134:
      if (record->event.pressed) {
        if(status_led2_on) {
        ergodox_right_led_2_off();
        status_led2_on = 0;
        } else {
        ergodox_right_led_2_on();
        status_led2_on = 1;
        }
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        if(status_led3_on) {
        ergodox_right_led_3_off();
        status_led3_on = 0;
        } else {
        ergodox_right_led_3_on();
        status_led3_on = 1;
        }
      }
      return 0;
      break;
  }
  return 1;
}
