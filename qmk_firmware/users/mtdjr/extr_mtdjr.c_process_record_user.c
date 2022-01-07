
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int _ADJUST ;
 int _LOWER ;
 int _QWERTY ;
 int _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int solenoid_buzz_off () ;
 int solenoid_buzz_on () ;
 int solenoid_dwell_minus () ;
 int solenoid_dwell_plus () ;
 int solenoid_fire () ;
 int solenoid_toggle () ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {





  switch (keycode) {
    case 134:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 135:
      if (record->event.pressed) {
        layer_on(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        layer_on(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 136:
      if (record->event.pressed) {
        layer_on(_ADJUST);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_ADJUST);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 128:





      break;
    case 130:





      break;
    case 129:





      break;
    case 131:





      break;
    case 132:





      break;
  }
  return 1;
}
