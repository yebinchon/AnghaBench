
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_POWER ;
 int KC_RCTL ;
 int KC_RSFT ;
 int const* MACRO_NONE ;
 int PLAY_NOTE_ARRAY (int ,int,int ) ;
 int _ADJUST ;
 int _FKEYS ;
 int _NUMSYM ;
 int _PLOVER ;
 int backlight_step () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int stop_all_notes () ;
 int tone_adjust ;
 int tone_plover ;
 int tone_qwerty ;
 int unregister_code (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 5:
            if (record->event.pressed) {
              register_code(KC_RSFT);
              register_code(KC_RCTL);
              register_code(KC_POWER);
              unregister_code(KC_POWER);
              unregister_code(KC_RCTL);
              unregister_code(KC_RSFT);
            }
        break;
        case 6:
              if (record->event.pressed) {




              layer_off(_NUMSYM);
              layer_off(_FKEYS);
              layer_off(_ADJUST);
              layer_on(_PLOVER);
            }
        break;
        case 7:
              if (record->event.pressed) {



              layer_off(_NUMSYM);
              layer_off(_FKEYS);
              layer_off(_PLOVER);
              layer_off(_ADJUST);
            }
        break;
        case 8:
          if (record->event.pressed) {
            register_code(KC_RSFT);



          } else {
            unregister_code(KC_RSFT);
          }
        break;
        case 9:
          if(record->event.pressed) {




            layer_off(_NUMSYM);
            layer_off(_FKEYS);
            layer_off(_PLOVER);
            layer_on(_ADJUST);
          }
      }
    return MACRO_NONE;
}
