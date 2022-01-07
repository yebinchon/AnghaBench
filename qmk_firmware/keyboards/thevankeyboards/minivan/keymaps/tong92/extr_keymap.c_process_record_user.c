
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







 int _MAC ;
 int _MAC_SHORTCUT ;
 int _MOUSE ;
 int _WINDOW ;
 int _WINDOW_SHORTCUT ;
 int backlight_step () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 128:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_WINDOW);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_MAC);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        layer_on(_MOUSE);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        layer_off(_MOUSE);
        layer_off(_WINDOW_SHORTCUT);
        layer_off(_MAC_SHORTCUT);
      }
      return 0;
      break;
  }
  return 1;
}
