
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






 int KC_RSFT ;

 int PLAY_SONG (int ) ;
 int _ADJUST ;
 unsigned long _COLEMAK ;
 unsigned long _DVORAK ;
 int _LOWER ;
 int _PLOVER ;
 unsigned long _QWERTY ;
 int _RAISE ;
 int backlight_step () ;
 int breathing_period_set (int) ;
 int breathing_pulse () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int rgblight_decrease_hue () ;
 int rgblight_decrease_sat () ;
 int rgblight_decrease_val () ;
 int rgblight_increase_hue () ;
 int rgblight_increase_sat () ;
 int rgblight_increase_val () ;
 int rgblight_step () ;
 int rgblight_toggle () ;
 int stop_all_notes () ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_plover ;
 int tone_plover_gb ;
 int tone_qwerty ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case 137:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<_QWERTY);
          }
          break;
      return 0;
        case 142:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<_COLEMAK);
          }
          break;
      return 0;
        case 141:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<_DVORAK);
          }
          break;
      return 0;
        case 139:
          if (record->event.pressed) {
            layer_on(_LOWER);




            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          } else {
            layer_off(_LOWER);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          }
          break;
      return 0;
        case 136:
          if (record->event.pressed) {
            layer_on(_RAISE);




            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          } else {
            layer_off(_RAISE);
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
          }
          break;
      return 0;
        case 143:
          if (record->event.pressed) {
            register_code(KC_RSFT);



          } else {
            unregister_code(KC_RSFT);
          }
        break;
      return 0;
        case 138:
          if (!record->event.pressed) {




            layer_on(_PLOVER);
          }
        break;
      return 0;
        case 140:
          if (record->event.pressed) {



            layer_off(_PLOVER);
          }
        break;
      return 0;

    case 128:

      if (record->event.pressed) {
        rgblight_toggle();
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        rgblight_increase_hue();
      }
      return 0;
      break;
    case 135:
      if (record->event.pressed) {
        rgblight_decrease_hue();
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        rgblight_increase_sat();
      }
      return 0;
      break;
    case 134:
      if (record->event.pressed) {
        rgblight_decrease_sat();
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        rgblight_increase_val();
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        rgblight_decrease_val();
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        rgblight_step();
      }
      return 0;
      break;


      }
  return 1;
}
