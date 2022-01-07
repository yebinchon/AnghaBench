
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
 int _ADJUST ;
 int _COLEMAK ;
 int _DVORAK ;
 int _FUNC ;
 int _FUNC2 ;
 int _QWERTY ;
 int _RGB ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_DVORAK);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        layer_on(_FUNC);
        update_tri_layer(_FUNC, _FUNC2, _ADJUST);
      } else {
        layer_off(_FUNC);
        update_tri_layer(_FUNC, _FUNC2, _ADJUST);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        layer_on(_FUNC2);
        update_tri_layer(_FUNC, _FUNC2, _ADJUST);
      } else {
        layer_off(_FUNC2);
        update_tri_layer(_FUNC, _FUNC2, _ADJUST);
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        layer_on(_RGB);
      } else {
        layer_off(_RGB);
      }
      return 0;
      break;
  }
  return 1;
}
