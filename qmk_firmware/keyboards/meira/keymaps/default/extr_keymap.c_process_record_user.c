
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
 int PLAY_NOTE_ARRAY (int ,int,int ) ;



 int RGB_current_mode ;
 int TOG_STATUS ;
 int _ADJUST ;
 int _LOWER ;
 int _RAISE ;
 int backlight_init_ports () ;
 int backlight_step () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int print (char*) ;
 TYPE_3__ rgblight_config ;
 int rgblight_mode (int) ;
 int rgblight_step () ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_qwerty ;
 int update_tri_layer_RGB (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 130:
      if (record->event.pressed) {




      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {




      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {




      }
      return 0;
      break;
    case 131:
        if (record->event.pressed) {


            if (TOG_STATUS) {
            } else {
                TOG_STATUS = !TOG_STATUS;



            }
            layer_on(_LOWER);
            update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
        } else {



            TOG_STATUS = 0;
            layer_off(_LOWER);
            update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
        }
        return 0;
        break;
    case 129:
        if (record->event.pressed) {


            if (TOG_STATUS) {
            } else {
                TOG_STATUS = !TOG_STATUS;



            }
            layer_on(_RAISE);
            update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
        } else {



            layer_off(_RAISE);
            TOG_STATUS = 0;
            update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
        }
        return 0;
        break;
    case 136:

        if (record->event.pressed) {
            layer_on(_ADJUST);
        } else {
            layer_off(_ADJUST);
        }
        return 0;
        break;
    case 134:






        return 0;
        break;
    case 135:
        if (record->event.pressed) {
            print("Stepping backlight\n");





        }
        return 0;
        break;
  }
  return 1;
}
