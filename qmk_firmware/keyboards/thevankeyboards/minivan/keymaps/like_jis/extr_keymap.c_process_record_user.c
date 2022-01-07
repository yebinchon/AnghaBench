
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_9__ {int swap_lalt_lgui; } ;
struct TYPE_8__ {int mode; } ;



 int KC_LANG2 ;


 int RGB_current_mode ;
 int SEND_STRING (int ) ;
 int SS_LALT (char*) ;
 int eeconfig_update_rgblight_default () ;
 TYPE_5__ keymap_config ;
 int register_code (int ) ;
 TYPE_3__ rgblight_config ;
 int rgblight_enable () ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

  bool result = 0;
  switch (keycode) {
    case 130:
      if (record->event.pressed) {
        if (keymap_config.swap_lalt_lgui == 0) {
          register_code(KC_LANG2);
        } else {
          SEND_STRING(SS_LALT("`"));
        }
      } else {
        unregister_code(KC_LANG2);
      }
      break;
    default:
      result = 1;
      break;
  }

  return result;
}
