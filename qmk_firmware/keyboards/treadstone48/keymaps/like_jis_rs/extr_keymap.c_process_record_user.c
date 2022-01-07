
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_10__ {int swap_lalt_lgui; } ;
struct TYPE_9__ {int mode; } ;





 int KC_LANG2 ;


 int L_BASE ;
 int L_BASES ;



 int RGB_current_mode ;
 int SEND_STRING (int ) ;
 int SS_LALT (char*) ;
 int UPDATE_KEYMAP_STATUS () ;
 int UPDATE_KEY_STATUS (int,TYPE_2__*) ;
 int _ADJUST ;
 int _LOWER ;
 int _LOWRS ;
 int _RAISE ;
 int default_layer_set (int ) ;
 int eeconfig_update_rgblight_default () ;
 TYPE_5__ keymap_config ;
 int register_code (int ) ;
 TYPE_3__ rgblight_config ;
 int rgblight_enable () ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;
 int unregister_code (int ) ;
 int update_change_layer (int ,int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

  UPDATE_KEY_STATUS(keycode, record);

  bool result = 0;
  switch (keycode) {
    case 132:
      update_change_layer(record->event.pressed, _LOWER, _RAISE, _ADJUST);
      break;
    case 130:
      update_change_layer(record->event.pressed, _RAISE, _LOWER, _ADJUST);
      break;
    case 135:
      if (record->event.pressed) {
        default_layer_set(L_BASE);
      }
      break;
    case 134:
      if (record->event.pressed) {
        default_layer_set(L_BASES);
      }
      break;
    case 131:
      update_change_layer(record->event.pressed, _LOWRS, _RAISE, _ADJUST);
      break;
    case 133:
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

  UPDATE_KEYMAP_STATUS();
  return result;
}
