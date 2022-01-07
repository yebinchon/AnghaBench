
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
struct TYPE_7__ {int mode; int val; int sat; int hue; } ;





 int IS_LAYER_OFF (int ) ;
 int IS_LAYER_ON (int ) ;



 int RGB_current_hue ;
 int RGB_current_mode ;
 int _ADJUST ;
 unsigned long _COLEMAK ;
 unsigned long _DVORAK ;
 int _LOWER ;
 unsigned long _QWERTY ;
 int _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 TYPE_3__ rgblight_config ;
 int rgblight_mode (int) ;
 int rgblight_sethsv (int ,int ,int ) ;
 int rgblight_setrgb (int ,int,int) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        persistent_default_layer_set(1UL<<_QWERTY);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        persistent_default_layer_set(1UL<<_COLEMAK);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        persistent_default_layer_set(1UL<<_DVORAK);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {

        if (IS_LAYER_OFF(_RAISE) && IS_LAYER_OFF(_ADJUST)) {

          RGB_current_mode = rgblight_config.mode;
          RGB_current_hue = rgblight_config.hue;


          rgblight_mode(1);
          rgblight_setrgb(0, 0, 255);
        }

        layer_on(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);

        if (IS_LAYER_ON(_ADJUST)){

          rgblight_setrgb(0, 255, 255);
        }
      } else {

        layer_off(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);

        if (IS_LAYER_OFF(_RAISE) && IS_LAYER_OFF(_ADJUST)) {

          rgblight_mode(RGB_current_mode);
          rgblight_sethsv(RGB_current_hue, rgblight_config.sat, rgblight_config.val);
        } else if (IS_LAYER_ON(_RAISE)){

          rgblight_setrgb(0, 255, 0);
        }
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {

        if (IS_LAYER_OFF(_LOWER) && IS_LAYER_OFF(_ADJUST)) {

          RGB_current_mode = rgblight_config.mode;
          RGB_current_hue = rgblight_config.hue;


          rgblight_mode(1);
          rgblight_setrgb(0, 255, 0);
        }

        layer_on(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);

        if (IS_LAYER_ON(_ADJUST)){

          rgblight_setrgb(0, 255, 255);
        }
      } else {
        layer_off(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);

        if (IS_LAYER_OFF(_LOWER) && IS_LAYER_OFF(_ADJUST)) {

          rgblight_mode(RGB_current_mode);
          rgblight_sethsv(RGB_current_hue, rgblight_config.sat, rgblight_config.val);
        } else if (IS_LAYER_ON(_LOWER)){

          rgblight_setrgb(0, 0, 255);
        }
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
