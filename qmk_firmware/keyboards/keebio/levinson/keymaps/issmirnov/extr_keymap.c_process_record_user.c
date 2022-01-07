
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int RGBLIGHT_MODE_RAINBOW_SWIRL ;

 int _SYMB ;
 int process_tap_tog (int ,TYPE_2__*) ;
 int rgblight_mode (int ) ;
 int tap_tog_count ;
 int tap_tog_layer_other_key_pressed ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        rgblight_mode(RGBLIGHT_MODE_RAINBOW_SWIRL);
      }
      return 1;
      break;

    case 128:
      process_tap_tog(_SYMB,record);
      return 0;
      break;
    default:
      tap_tog_count = 0;
      tap_tog_layer_other_key_pressed = 1;
      break;
  }
  return 1;
}
