
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






 unsigned long _ADJUST ;
 unsigned long _ADJUST2 ;
 unsigned long _COLEMAK ;
 unsigned long _COLEMAKGM ;
 unsigned long _FUNCTION ;
 unsigned long _FUNCTION2 ;
 unsigned long _NUMBERS ;
 unsigned long _NUMBERS2 ;
 unsigned long _NUMPAD ;
 unsigned long _QWERTY ;
 unsigned long _QWERTYGM ;
 int default_layer_set (unsigned long) ;
 int layer_off (unsigned long) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
 case 131:
      if (record->event.pressed) {
        default_layer_set(1UL << _COLEMAK);

        layer_off ( _QWERTY);
        layer_off ( _NUMBERS);
        layer_off ( _NUMBERS2);
        layer_off ( _FUNCTION);
        layer_off ( _FUNCTION2);
        layer_off ( _NUMPAD);
        layer_off ( _COLEMAKGM);
        layer_off ( _QWERTYGM);
        layer_off ( _ADJUST);
        layer_off ( _ADJUST2);
   }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        default_layer_set(1UL << _QWERTY);

        layer_off ( _COLEMAK);
        layer_off ( _NUMBERS);
        layer_off ( _NUMBERS2);
        layer_off ( _FUNCTION);
        layer_off ( _FUNCTION2);
        layer_off ( _NUMPAD);
        layer_off ( _COLEMAKGM);
        layer_off ( _QWERTYGM);
        layer_off ( _ADJUST);
        layer_off ( _ADJUST2);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        default_layer_set(1UL << _COLEMAKGM);
        layer_off ( _QWERTY);
        layer_off ( _COLEMAK);
        layer_off ( _NUMBERS);
        layer_off ( _NUMBERS2);
        layer_off ( _FUNCTION);
        layer_off ( _FUNCTION2);
        layer_off ( _NUMPAD);
        layer_off ( _QWERTYGM);
        layer_off ( _ADJUST);
        layer_off ( _ADJUST2);
   }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        default_layer_set(1UL << _QWERTYGM);
        layer_off ( _QWERTY);
        layer_off ( _COLEMAK);
        layer_off ( _NUMBERS);
        layer_off ( _NUMBERS2);
        layer_off ( _FUNCTION);
        layer_off ( _FUNCTION2);
        layer_off ( _NUMPAD);
        layer_off ( _COLEMAKGM);
        layer_off ( _ADJUST);
        layer_off ( _ADJUST2);
   }
      return 0;
      break;
  }
  return 1;
}
