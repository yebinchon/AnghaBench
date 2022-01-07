
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




 int KC_C ;
 int KC_O ;
 int KC_P ;
 int KC_R ;
 int KC_T ;
 int KC_W ;

 int ONESHOT_PRESSED ;
 int ONESHOT_START ;
 int PLAY_SONG (int ) ;





 int _ADJUST ;
 int _DEAD ;
 int _LOWER ;
 int _PLOVER ;
 unsigned long _QWERTY ;
 int _RAISE ;
 unsigned long _WORKMAN ;
 int clear_keyboard () ;
 int clear_oneshot_layer_state (int ) ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_4__ keymap_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int set_oneshot_layer (int ,int ) ;
 int stop_all_notes () ;
 int tone_plover ;
 int tone_plover_gb ;
 int tone_qwerty ;
 int tone_workman ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 128:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_WORKMAN);
      }
      return 0;
      break;
    case 135:
      if (record->event.pressed) {
        layer_on(_DEAD);
        set_oneshot_layer(_DEAD, ONESHOT_START);
        clear_oneshot_layer_state(ONESHOT_PRESSED);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {



        persistent_default_layer_set(1UL<<_QWERTY);
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
    case 130:
      if (record->event.pressed) {
        layer_on(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {




        layer_off(_RAISE);
        layer_off(_LOWER);
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
    case 134:
      if (record->event.pressed) {



        layer_off(_PLOVER);
      }
      return 0;
      break;
  case 129:
    if (record->event.pressed) {
      register_code(KC_R);
      register_code(KC_W);
      register_code(KC_T);
      register_code(KC_C);
      register_code(KC_P);
      register_code(KC_O);
      clear_keyboard();
    }
    return 0;
    break;
  }
  return 1;
}
