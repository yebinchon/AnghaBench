
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int _COLEMAK ;
 int _QWERTY ;
 int eeconfig_update_rgblight_default () ;
 scalar_t__ process_record_keymap (int,TYPE_2__*) ;
 scalar_t__ process_record_rgb (int,TYPE_2__*) ;
 int rgblight_enable () ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 130:
      if(record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);
      }
      return 0;
      break;
    case 128:






      break;
  }


  return process_record_keymap(keycode, record) &&



    1;
}
