
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;




 int KC_BSLASH ;
 int KC_BSLS ;
 int KC_BSPC ;
 int KC_COMM ;

 int KC_DEL ;
 int KC_DOT ;


 int KC_LSFT ;
 int KC_LSHIFT ;

 int KC_RSHIFT ;
 int KC_SLSH ;
 int MOD_BIT (int ) ;

 int _COLEMAK ;
 int _QWERTY ;
 TYPE_4__* keyboard_report ;
 int layer_clear () ;
 int register_code (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int shift ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

  switch(keycode) {
    case 129:
      layer_clear();
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 134:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        if (keyboard_report->mods & shift) {
          if (keyboard_report->mods & MOD_BIT(KC_LSFT)) {
            unregister_code(KC_LSHIFT);
          }
          else {
            unregister_code(KC_RSHIFT);
          }
          register_code(KC_DEL);
        }
        else {
          register_code(KC_BSPC);
        }
      }
      else {
        unregister_code(KC_DEL);
        unregister_code (KC_BSPC);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        if (keyboard_report->mods & shift) {
            if (keyboard_report->mods & MOD_BIT(KC_LSFT)) {
              unregister_code(KC_LSHIFT);
            }
            else {
              unregister_code(KC_RSHIFT);
            }
          register_code(KC_BSLASH);
        }
        else {
          register_code(KC_SLSH);
        }
      }
      else {
        unregister_code(KC_BSLASH);
        unregister_code (KC_SLSH);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        if (keyboard_report->mods & shift) {
          register_code(KC_SLSH);
        }
        else {
          register_code(KC_DOT);
        }
      }
      else {
        unregister_code(KC_SLSH);
        unregister_code (KC_DOT);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        if (keyboard_report->mods & shift) {
          register_code(KC_BSLS);
        }
        else {
          register_code(KC_COMM);
        }
      }
      else {
        unregister_code(KC_BSLS);
        unregister_code (KC_COMM);
      }
      return 0;
      break;
    }
    return 1;
}
