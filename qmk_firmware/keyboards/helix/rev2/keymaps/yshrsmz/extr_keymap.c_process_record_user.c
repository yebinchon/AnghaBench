
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_9__ {int swap_lalt_lgui; } ;
struct TYPE_8__ {int mode; } ;






 int KC_LANG1 ;
 int KC_LANG2 ;

 int PLAY_SONG (int ) ;



 int RGB_current_mode ;
 int SEND_STRING (int ) ;
 int SS_LALT (char*) ;
 int TOG_STATUS ;
 int _ADJUST ;
 int _FUNC ;
 int _LOWER ;
 unsigned long _QWERTY ;
 int _RAISE ;
 TYPE_5__ keymap_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 TYPE_3__ rgblight_config ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;
 int tone_qwerty ;
 int unregister_code (int ) ;
 int update_tri_layer_RGB (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 130:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_QWERTY);
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
    case 133:
      if (record->event.pressed) {
          layer_on(_FUNC);
        } else {
          layer_off(_FUNC);
        }
        return 0;
        break;
    case 135:
        if (record->event.pressed) {
          layer_on(_ADJUST);
        } else {
          layer_off(_ADJUST);
        }
        return 0;
        break;

    case 128:







      return 0;
      break;
    case 134:
      if (record->event.pressed) {
        if(keymap_config.swap_lalt_lgui==0){
          register_code(KC_LANG2);
        }else{
          SEND_STRING(SS_LALT("`"));
        }
      } else {
        unregister_code(KC_LANG2);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        if(keymap_config.swap_lalt_lgui==0){
          register_code(KC_LANG1);
        }else{
          SEND_STRING(SS_LALT("`"));
        }
      } else {
        unregister_code(KC_LANG1);
      }
      return 0;
      break;
  }
  return 1;
}
