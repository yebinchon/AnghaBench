
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
 int _AEOLIAN ;
 int _DORIAN ;
 int _IONIAN ;
 int _LOCRIAN ;
 int _LYDIAN ;
 int _MIXOLYDIAN ;
 int _PHRYGIAN ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 132:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_IONIAN);
      }
      break;
    case 133:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_DORIAN);
      }
      break;
    case 128:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_PHRYGIAN);
      }
      break;
    case 130:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_LYDIAN);
      }
      break;
    case 129:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_MIXOLYDIAN);
      }
      break;
    case 134:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_AEOLIAN);
      }
      break;
    case 131:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_LOCRIAN);
      }
      break;
  }
  return 1;
}
