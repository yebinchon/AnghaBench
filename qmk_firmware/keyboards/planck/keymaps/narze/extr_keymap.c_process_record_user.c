
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






 int KC_9 ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_MINS ;
 int KC_RSFT ;


 int PLAY_SONG (int ) ;





 int _ADJUST ;
 int _COLEMAK ;
 int _LOWER ;
 int _PLOVER ;
 int _QWERTY ;
 int _QWOC ;
 int _RAISE ;
 int backlight_step () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_5__ keymap_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int perform_space_cadet (TYPE_2__*,int ,int ,int ) ;
 int register_code (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int set_superduper_key_combo_layer (int ) ;
 int stop_all_notes () ;
 int toggle_superduper_mode () ;
 int tone_coin ;
 int tone_goodbye ;
 int tone_plover ;
 int tone_plover_gb ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 131:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_QWERTY);

                set_superduper_key_combo_layer(_QWERTY);
            }
            return 0;

        case 137:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_COLEMAK);

                set_superduper_key_combo_layer(_COLEMAK);
            }
            return 0;

        case 130:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_QWOC);

                set_superduper_key_combo_layer(_QWOC);
            }
            return 0;

        case 134:
            if (record->event.pressed) {
                layer_on(_LOWER);
                update_tri_layer(_LOWER, _RAISE, _ADJUST);
            } else {
                layer_off(_LOWER);
                update_tri_layer(_LOWER, _RAISE, _ADJUST);
            }
            return 0;

        case 129:
            if (record->event.pressed) {
                layer_on(_RAISE);
                update_tri_layer(_LOWER, _RAISE, _ADJUST);
            } else {
                layer_off(_RAISE);
                update_tri_layer(_LOWER, _RAISE, _ADJUST);
            }
            return 0;

        case 138:
            if (record->event.pressed) {
                register_code(KC_RSFT);



            } else {
                unregister_code(KC_RSFT);
            }
            return 0;

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

        case 136:
            if (record->event.pressed) {



                layer_off(_PLOVER);
            }
            return 0;

        case 128:
            if (record->event.pressed) {
                bool enabled = toggle_superduper_mode();
            }
            return 0;




        case 135:
            perform_space_cadet(record, KC_LGUI, KC_LSFT, KC_MINS);
            return 0;


        case 133:
            perform_space_cadet(record, KC_LSFT, KC_LSFT, KC_9);
            return 0;

        default:
            return 1;
    }
    return 1;
}
