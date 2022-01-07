
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mode; } ;







 int RGB_current_mode ;
 int TOG_STATUS ;
 int _ADJ ;
 int _FN ;
 int _MACROPAD ;
 int _QWERTY ;
 int eeconfig_update_rgblight_default () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 TYPE_3__ rgblight_config ;
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
        set_single_persistent_default_layer(_MACROPAD);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {


        if (TOG_STATUS) {
        } else {
          TOG_STATUS = !TOG_STATUS;



        }
        layer_on(_FN);
      } else {



        layer_off(_FN);
        TOG_STATUS = 0;
      }
      return 0;
      break;
    case 132:
        if (record->event.pressed) {
          layer_on(_ADJ);
        } else {
          layer_off(_ADJ);
        }
        return 0;
        break;

    case 128:







      break;
  }
  return 1;
}
