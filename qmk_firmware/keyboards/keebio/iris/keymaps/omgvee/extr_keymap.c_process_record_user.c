
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
 int _HWCT ;
 int _LOWER ;
 int _MOUSE ;
 int _QWERTY ;
 int _RAISE ;
 int dprintf (char*,int const) ;
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
    case 131:
      if (record->event.pressed) {
        layer_on(_LOWER);
        dprintf("Got on layer %s ", 131);
        update_tri_layer(_LOWER, _RAISE, _MOUSE);
      } else {
        layer_off(_LOWER);
        dprintf("Got off layer %s ", 131);
        update_tri_layer(_LOWER, _RAISE, _MOUSE);
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        layer_on(_RAISE);
        dprintf("Got on layer %s ", 128);
        update_tri_layer(_LOWER, _RAISE, _MOUSE);
      } else {
        layer_off(_RAISE);
        dprintf("Got off layer %s ", 128);
        update_tri_layer(_LOWER, _RAISE, _MOUSE);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        layer_on(_MOUSE);
        dprintf("Got on layer %s ", 130);
        update_tri_layer(_LOWER, _RAISE, _MOUSE);
      } else {
        layer_off(_MOUSE);
        dprintf("Got off layer %s ", 130);
        update_tri_layer(_LOWER, _RAISE, _MOUSE);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        layer_on(_HWCT);
        dprintf("Got on layer %s ", 132);
        update_tri_layer(_LOWER, _RAISE, _MOUSE);
      } else {
        layer_off(_HWCT);
        dprintf("Got off layer %s ", 132);
        update_tri_layer(_LOWER, _RAISE, _MOUSE);
      }
      return 0;
      break;

    case 133:
      if (record->event.pressed) {
        layer_on(_ADJUST);
      } else {
        layer_off(_ADJUST);
      }
      return 0;
      break;
  }
  return 1;
}
