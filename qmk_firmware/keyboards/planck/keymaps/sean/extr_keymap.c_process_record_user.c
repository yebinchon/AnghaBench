
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






 int DOWN (int ) ;

 int END ;
 int KC_C ;
 int KC_LCTL ;
 int KC_RSFT ;
 int KC_V ;
 int KC_X ;

 int MACRODOWN (int ,int ,int ,int ) ;





 int TYPE (int ) ;
 int UP (int ) ;
 int _ADJUST ;
 unsigned long _DVRK ;
 unsigned long _LOWER ;
 unsigned long _RAISE ;
 unsigned long _SDRK ;
 unsigned long _SLWER ;
 unsigned long _SRAIS ;
 int backlight_step () ;
 int backlight_toggle () ;
 int layer_off (unsigned long) ;
 int layer_on (unsigned long) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int unregister_code (int ) ;
 int update_tri_layer (unsigned long,unsigned long,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 134:
      if (record->event.pressed) {
        persistent_default_layer_set(1UL<<_DVRK);
        layer_on(_DVRK);
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        layer_on(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        layer_on(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        persistent_default_layer_set(1UL<<_SDRK);
        layer_on(_SDRK);
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        layer_on(_SLWER);
        update_tri_layer(_SLWER, _SRAIS, _ADJUST);
      } else {
        layer_off(_SLWER);
        update_tri_layer(_SLWER, _SRAIS, _ADJUST);
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        layer_on(_SRAIS);
        update_tri_layer(_SLWER, _SRAIS, _ADJUST);
      } else {
        layer_off(_SRAIS);
        update_tri_layer(_SLWER, _SRAIS, _ADJUST);
      }
      return 0;
      break;
    case 138:
      if (record->event.pressed) {
        register_code(KC_RSFT);



      } else {
        unregister_code(KC_RSFT);
      }
      return 0;
      break;
    case 137:
      if (record->event.pressed) {



      }
      return 0;
      break;
    case 135:
     return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_X), UP(KC_LCTL), END );
    case 136:
     return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_C), UP(KC_LCTL), END );
    case 132:
     return MACRODOWN( DOWN(KC_LCTL), TYPE(KC_V), UP(KC_LCTL), END );
  }
  return 1;
}
