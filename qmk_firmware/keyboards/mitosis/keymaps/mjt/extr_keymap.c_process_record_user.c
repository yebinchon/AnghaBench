
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;



 int DYN_REC_STOP ;



 int KC_A ;
 int KC_F1 ;
 int KC_F12 ;
 int KC_LSFT ;
 int KC_M ;
 int KC_POWER ;
 int KC_RBRC ;
 int KC_RCTL ;
 int KC_RSFT ;
 int LAYER_TOGGLE_DELAY ;

 int MO (int ) ;
 int MOD_LSFT ;
 int PLAY_SONG (int ) ;

 int _ADJUST ;
 scalar_t__ _FUNCSHIFT ;
 int _FUNCTIONMAC ;
 int _FUNCTIONPC ;
 int _SHIFTED ;
 scalar_t__ biton32 (int ) ;
 int function_layer ;
 int key_timer ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int layer_state ;
 int music_scale ;
 int persistent_function_layer_set (int ) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;
 int register_code (int ) ;
 int register_mods (int ) ;
 int singular_key ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int tone_fnmac ;
 int tone_fnpc ;
 int unregister_code (int ) ;
 int unregister_mods (int ) ;
 int update_tri_layer (int ,int ,scalar_t__) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  uint16_t macro_kc = (keycode == MO(_ADJUST) ? DYN_REC_STOP : keycode);
  if (!process_record_dynamic_macro(macro_kc, record)) {
    return 0;
  }
  uint8_t layer;
  layer = biton32(layer_state);


  switch (keycode) {
  case 129:
    if (record->event.pressed) {

      register_code(KC_RSFT);
      register_code(KC_RCTL);
      register_code(KC_POWER);
      unregister_code(KC_POWER);
      unregister_code(KC_RCTL);
      unregister_code(KC_RSFT);
    }
    return 0;
    break;
  case 132:
    if (record->event.pressed) {
      key_timer = timer_read();
      singular_key = 1;

      layer_on(function_layer);
    } else {
      if (timer_elapsed(key_timer) < LAYER_TOGGLE_DELAY || !singular_key) {
        layer_off(function_layer);
      }
    }
    update_tri_layer(function_layer, _SHIFTED, _FUNCSHIFT);
    return 0;
    break;

  case 128:
    if (record->event.pressed) {
      key_timer = timer_read();
      singular_key = 1;
      layer_on(_SHIFTED);
      register_code(KC_LSFT);
    } else {
      if (timer_elapsed(key_timer) < LAYER_TOGGLE_DELAY || !singular_key) {
        layer_off(_SHIFTED);
        unregister_code(KC_LSFT);
      }
    }
    update_tri_layer(function_layer, _SHIFTED, _FUNCSHIFT);
    return 0;
    break;
  case 130:
    if (record->event.pressed) {
      persistent_function_layer_set(_FUNCTIONPC);



    }
    return 0;
    break;
  case 131:
    if (record->event.pressed) {
      persistent_function_layer_set(_FUNCTIONMAC);



    }
  return 0;
  break;
    case 133:
      if (record->event.pressed) {





        register_code(KC_A);
      } else {
        unregister_code(KC_A);
      }
    return 0;
    break;


  default:
    singular_key = 0;
    break;
  }


  if (layer == _FUNCSHIFT) {


    if ( (keycode >= KC_F1 && keycode <= KC_F12)
         || keycode == KC_RBRC ) {
      if (record->event.pressed) {
        unregister_mods(MOD_LSFT);
      } else {
        register_mods(MOD_LSFT);
      }
    }
  }

  return 1;
}
