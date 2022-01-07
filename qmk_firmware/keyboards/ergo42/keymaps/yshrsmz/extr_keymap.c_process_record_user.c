
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






 int KC_LANG1 ;
 int KC_LANG2 ;


 unsigned long _BASE ;
 int _GAME ;
 int _META ;
 int _SYMB ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 133:
      if (record->event.pressed) {
        persistent_default_layer_set(1UL<<_BASE);
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        layer_on(_META);
        update_tri_layer(_META, _SYMB, _GAME);
      } else {
        layer_off(_META);
        update_tri_layer(_META, _SYMB, _GAME);
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        layer_on(_SYMB);
        update_tri_layer(_META, _SYMB, _GAME);
      } else {
        layer_off(_SYMB);
        update_tri_layer(_META, _SYMB, _GAME);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        layer_on(_GAME);
      } else {
        layer_off(_GAME);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        register_code(KC_LANG2);
      } else {
        unregister_code(KC_LANG2);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        register_code(KC_LANG1);
      } else {
        unregister_code(KC_LANG1);
      }
      return 0;
      break;
  }
  return 1;
}
