
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
struct TYPE_7__ {int nkro; int raw; } ;




 int KC_POWER ;
 int KC_RCTL ;
 int KC_RSFT ;


 int PLAY_SONG (int ) ;



 unsigned long _ADJUST ;
 unsigned long _NUMBERS ;
 unsigned long _PLOVER ;
 unsigned long _QWERTY ;
 unsigned long _SYMBOLS ;
 int backlight_step () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_4__ keymap_config ;
 int layer_off (unsigned long) ;
 int layer_on (unsigned long) ;
 int persistant_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int stop_all_notes () ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_plover ;
 int tone_plover_gb ;
 int tone_qwerty ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {



        persistant_default_layer_set(1UL<<_QWERTY);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {



        persistant_default_layer_set(1UL<<_NUMBERS);
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {



        persistant_default_layer_set(1UL<<_SYMBOLS);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {




        layer_off(_NUMBERS);
        layer_off(_SYMBOLS);
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
    case 132:
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
    case 134:
      if (record->event.pressed) {
        register_code(KC_RSFT);



      } else {
        unregister_code(KC_RSFT);
      }
      return 0;
      break;
    }
    return 1;
}
