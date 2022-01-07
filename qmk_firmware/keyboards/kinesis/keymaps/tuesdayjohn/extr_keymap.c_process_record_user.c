
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
struct TYPE_7__ {int nkro; } ;





 unsigned long _COLEMAK ;
 int _GAMING ;
 int _NUMPAD ;
 unsigned long _QWERTY ;
 int default_layer_set (unsigned long) ;
 TYPE_4__ keymap_config ;
 int layer_invert (int ) ;
 int layer_move (unsigned long) ;
 int layer_off (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
 case 130:
      if (record->event.pressed) {

        default_layer_set(1UL << _COLEMAK);
        layer_move (_COLEMAK);
        keymap_config.nkro = 0;
   }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {

        default_layer_set(1UL << _QWERTY);
        layer_move (_QWERTY);
        keymap_config.nkro = 0;
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        layer_invert (_GAMING);
        layer_off (_NUMPAD);
        keymap_config.nkro = 1;
   }
      return 0;
      break;
  }
  return 1;
}
