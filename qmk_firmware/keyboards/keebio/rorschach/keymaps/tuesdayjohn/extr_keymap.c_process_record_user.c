
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




 unsigned long _COLEMAK ;
 unsigned long _QWERTY ;
 int default_layer_set (unsigned long) ;
 int layer_move (unsigned long) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        default_layer_set(1UL << _COLEMAK);
        layer_move (_COLEMAK);

      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        default_layer_set(1UL << _QWERTY);
        layer_move (_QWERTY);
      }
      return 0;
      break;
  }
  return 1;
}
