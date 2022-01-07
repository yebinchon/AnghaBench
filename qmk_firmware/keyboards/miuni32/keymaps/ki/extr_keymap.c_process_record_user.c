
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





 int _BEAKL ;
 int _LOWER ;
 int _RAISE ;
 int _UNION ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
  case 130:
    if (record->event.pressed) {
      set_single_persistent_default_layer(_BEAKL);
    }
    return 0;
    break;
  case 129:
    if (record->event.pressed) {
      layer_on(_LOWER);
      update_tri_layer(_LOWER, _RAISE, _UNION);
    } else {
      layer_off(_LOWER);
      update_tri_layer(_LOWER, _RAISE, _UNION);
    }
    return 0;
    break;
  case 128:
    if (record->event.pressed) {
      layer_on(_RAISE);
      update_tri_layer(_LOWER, _RAISE, _UNION);
    } else {
      layer_off(_RAISE);
      update_tri_layer(_LOWER, _RAISE, _UNION);
    }
    return 0;
    break;
  }
  return 1;
}
