
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_8__ {int nkro; int raw; } ;



 int DYN_REC_STOP ;


 int KC_POWER ;
 int KC_RCTL ;
 int KC_RSFT ;


 int PLAY_SONG (int ) ;


 int _ADJUST ;
 int _FKEYS ;
 int _NUMSYM ;
 int _PLOVER ;
 unsigned long _QWERTY ;
 int backlight_step () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_5__ keymap_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistant_default_layer_set (unsigned long) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;
 int register_code (int ) ;
 int stop_all_notes () ;
 int tone_plover ;
 int tone_plover_gb ;
 int tone_qwerty ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  uint16_t macro_kc = (keycode == 132 ? DYN_REC_STOP : keycode);
  if (!process_record_dynamic_macro(macro_kc, record)) {
    return 0;
  }
  switch (keycode) {
    case 128:
      if (record->event.pressed) {



        persistant_default_layer_set(1UL<<_QWERTY);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        layer_on(_FKEYS);
        update_tri_layer(_FKEYS, _NUMSYM, _ADJUST);
      } else {
        layer_off(_FKEYS);
        update_tri_layer(_FKEYS, _NUMSYM, _ADJUST);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        layer_on(_NUMSYM);
        update_tri_layer(_FKEYS, _NUMSYM, _ADJUST);
      } else {
        layer_off(_NUMSYM);
        update_tri_layer(_FKEYS, _NUMSYM, _ADJUST);
      }
      return 0;
      break;
    case 134:
      if (record->event.pressed) {
        register_code(KC_RSFT);



      } else {
        unregister_code(KC_RSFT);
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {




        layer_off(_NUMSYM);
        layer_off(_FKEYS);
        layer_off(_ADJUST);
        layer_on(_PLOVER);
        if (!eeconfig_is_enabled()) {
            eeconfig_init();
        }
        keymap_config.raw = eeconfig_read_keymap();
        keymap_config.nkro = 1;
        eeconfig_update_keymap(keymap_config.raw);
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {



        layer_off(_PLOVER);
      }
      return 0;
      break;
    case 131:
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
  }
  return 1;
}
