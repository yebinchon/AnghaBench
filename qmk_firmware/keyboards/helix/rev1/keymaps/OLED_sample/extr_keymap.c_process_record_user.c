
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






 int KC_RSFT ;


 int PLAY_SONG (int ) ;


 int RGBLIGHT_MODE_SNAKE ;

 int RGB_current_mode ;
 int SEND_STRING (char*) ;
 int TOG_STATUS ;
 int _ADJUST ;
 unsigned long _COLEMAK ;
 unsigned long _DVORAK ;
 int _LOWER ;
 unsigned long _QWERTY ;
 int _RAISE ;
 int backlight_step () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 TYPE_3__ rgblight_config ;
 int rgblight_mode (int ) ;
 int rgblight_step () ;
 int tone_colemak ;
 int tone_dvorak ;
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
    case 134:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_COLEMAK);
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_DVORAK);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {


        if (TOG_STATUS) {
        } else {
          TOG_STATUS = !TOG_STATUS;
          rgblight_mode(RGBLIGHT_MODE_SNAKE + 1);
        }
        layer_on(_LOWER);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      } else {
        rgblight_mode(RGB_current_mode);
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
          rgblight_mode(RGBLIGHT_MODE_SNAKE);
        }
        layer_on(_RAISE);
        update_tri_layer_RGB(_LOWER, _RAISE, _ADJUST);
      } else {
        rgblight_mode(RGB_current_mode);
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
    case 135:
      if (record->event.pressed) {
        register_code(KC_RSFT);



      } else {
        unregister_code(KC_RSFT);
      }
      return 0;
      break;

    case 128:
      if (record->event.pressed) {
        rgblight_mode(RGB_current_mode);
        rgblight_step();
        RGB_current_mode = rgblight_config.mode;
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        SEND_STRING("hello world");
      }
      return 0;
  }
  return 1;
}
