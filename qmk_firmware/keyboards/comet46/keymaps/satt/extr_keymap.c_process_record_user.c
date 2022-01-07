
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int _PSEUDO_US ;
 int _QWERTY ;
 int action_pseudo_lut (TYPE_2__*,int ,int ) ;
 int keymap_jis2us ;
 int set_keylog (int) ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {





  switch (keycode) {
    case 128:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_QWERTY);
      }
      break;
    case 129:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_PSEUDO_US);
      }
      break;
    case 130:
      action_pseudo_lut(record, _QWERTY, keymap_jis2us);
      break;
  }
  return 1;
}
