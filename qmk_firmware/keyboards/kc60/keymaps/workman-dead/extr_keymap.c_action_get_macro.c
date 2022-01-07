
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;


 int COMM ;
 int END ;
 int ENT ;
 int KC_3 ;
 int KC_COMM ;
 int KC_LSFT ;
 int KC_RSFT ;
 int const* MACRO (int ,int ,int ) ;
 int const* MACRO_NONE ;
 int MOD_BIT (int ) ;
 int ONESHOT_PRESSED ;
 int ONESHOT_START ;
 int SPC ;
 int T (int ) ;
 int _DK ;




 int clear_oneshot_layer_state (int ) ;
 TYPE_3__* keyboard_report ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int set_oneshot_layer (int ,int ) ;
 int unregister_code (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  switch(id) {
    case 128:
      if (record->event.pressed) {
        return MACRO(T(COMM), T(SPC), END);
      }
      break;
    case 129:
      if (record->event.pressed) {
        return MACRO(T(COMM), T(ENT), END);
      }
      break;
    case 131:
      if (record->event.pressed) {
        if (keyboard_report->mods & MOD_BIT(KC_LSFT) || keyboard_report->mods & MOD_BIT(KC_RSFT)) {
          register_code(KC_COMM);
        } else {
          layer_on(_DK);
          set_oneshot_layer(_DK, ONESHOT_START);
        }
      } else {
        clear_oneshot_layer_state(ONESHOT_PRESSED);
        unregister_code(KC_COMM);
      }
      break;
    case 130:
      if (record->event.pressed) {
        register_code(KC_3);
      } else {
        clear_oneshot_layer_state(ONESHOT_PRESSED);
        unregister_code(KC_3);
      }
      break;
  }

  return MACRO_NONE;
}
