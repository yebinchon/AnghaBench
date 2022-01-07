
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int swap_lalt_lgui; } ;





 int KC_LANG1 ;
 int KC_LANG2 ;




 int PLAY_SONG (int ) ;


 int SEND_STRING (char*) ;
 char* SS_LALT (char*) ;
 int _COLEMAK ;
 int _DVORAK ;
 int _EUCALYN ;
 int _KEYPAD ;
 int _QWERTY ;
 int eeconfig_update_rgblight_default () ;
 TYPE_4__ keymap_config ;
 int register_code (int ) ;
 int rgblight_enable () ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_qwerty ;
 int unregister_code (int ) ;
 int update_base_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {



        update_base_layer(_QWERTY);
      }
      return 0;
      break;
    case 136:
      if (record->event.pressed) {



        update_base_layer(_COLEMAK);
      }
      return 0;
      break;
    case 135:
      if (record->event.pressed) {



        update_base_layer(_DVORAK);
      }
      return 0;
      break;
    case 134:
      if (record->event.pressed) {



        update_base_layer(_EUCALYN);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {



        update_base_layer(_KEYPAD);
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
          SEND_STRING("00");
      }
      return 0;
      break;
    case 132:
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
    case 131:
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
    case 128:






      break;
  }
  return 1;
}
