
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mode; } ;




 int KC_RALT ;



 int RGB_current_mode ;
 int SEND_STRING (char*) ;
 int TAPPING_TERM ;
 int _ADJUST ;
 int _LOWER ;
 int _RAISE ;
 int eeconfig_update_rgb_matrix_default () ;
 int eeconfig_update_rgblight_default () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int oled_timer ;
 int register_code (int ) ;
 int rgb_matrix_enable () ;
 TYPE_3__ rgblight_config ;
 int rgblight_enable () ;
 int timer_elapsed (int) ;
 int timer_read () ;
 int timer_read32 () ;
 int unregister_code (int ) ;
 int update_tri_layer_RGB (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {




  }
  static uint16_t my_colon_timer;

  switch (keycode) {
    case 130:
      if (record->event.pressed) {
        layer_on(_LOWER);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_LOWER);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
    case 129:
      if (record->event.pressed) {
        layer_on(_RAISE);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_RAISE);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
    case 132:
        if (record->event.pressed) {
          layer_on(_ADJUST);
        } else {
          layer_off(_ADJUST);
        }
        return 0;
    case 131:
        if (record->event.pressed) {
          my_colon_timer = timer_read();
          register_code(KC_RALT);
        } else {
          unregister_code(KC_RALT);
          if (timer_elapsed(my_colon_timer) < TAPPING_TERM) {
            SEND_STRING(":");
          }
        }
        return 0;
    case 128:
      break;
  }
  return 1;
}
