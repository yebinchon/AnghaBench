
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_X ;
 int KC_Z ;
 int LGUI (int ) ;
 int LSFT (int ) ;



 int _NAVI ;
 int _SYMB ;
 int biton32 (int ) ;
 int layer_state ;
 int process_tap_tog (int ,TYPE_2__*) ;
 int tap_code16 (int ) ;
 int tap_tog_count ;
 int tap_tog_layer_other_key_pressed ;
 int tap_tog_layer_toggled_on ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  uint8_t layer = biton32(layer_state);
  switch (keycode) {
    case 130:
      process_tap_tog(_SYMB,record);
      return 0;
      break;

    case 129:

      if (record->event.pressed && (!tap_tog_layer_toggled_on || layer == _NAVI)) {
        tap_code16(LGUI(LSFT(KC_Z)));
        tap_tog_layer_other_key_pressed = 1;
      }
      break;
    case 128:

      if (record->event.pressed && (!tap_tog_layer_toggled_on || layer == _NAVI)) {
        tap_code16(LGUI(LSFT(KC_X)));
        tap_tog_layer_other_key_pressed = 1;
      }
      break;
    default:
      tap_tog_count = 0;
      tap_tog_layer_other_key_pressed = 1;
      break;
  }
  return 1;
}
