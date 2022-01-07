
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int KC_0 ;
 int KC_9 ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_MINS ;
 int KC_RSFT ;





 int _COLEMAK ;
 int _QWERTY ;
 int _QWOC ;
 int perform_space_cadet (TYPE_2__*,int ,int ,int ) ;
 int set_single_persistent_default_layer (int ) ;
 int set_superduper_key_combo_layer (int ) ;
 int toggle_superduper_mode () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case 131:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_QWERTY);

                set_superduper_key_combo_layer(_QWERTY);
            }
            return 0;

        case 134:
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

        case 128:
            if (record->event.pressed) {
                toggle_superduper_mode();
            }
            return 0;




        case 133:
            perform_space_cadet(record, KC_LGUI, KC_LSFT, KC_MINS);
            return 0;


        case 132:
            perform_space_cadet(record, KC_LSFT, KC_LSFT, KC_9);
            return 0;


        case 129:
            perform_space_cadet(record, KC_RSFT, KC_RSFT, KC_0);
            return 0;

        default:
            return 1;
    }
    return 1;
}
