
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






 int KC_BSPC ;
 int KC_RSFT ;

 int PLAY_SONG (int ) ;
 int PORTE ;



 int _ADJUST ;
 int _LOWER ;
 int _QWERTY_MAC ;
 int _QWERTY_WIN ;
 int _RAISE ;
 int backlight_step () ;
 int key_timer ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;
 int register_code (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int tap_code (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int timer_thresh ;
 int tone_macro1_record ;
 int tone_macro2_record ;
 int tone_macro_record_stop ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

    if (!process_record_dynamic_macro(keycode, record)) {
        return 0;
    }

    switch (keycode) {
        case 130:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_QWERTY_MAC);
            }
            return 0;
            break;
        case 129:
            if (record->event.pressed) {
                set_single_persistent_default_layer(_QWERTY_WIN);
            }
            return 0;
            break;
        case 131:
            if (record->event.pressed) {
                key_timer = timer_read();
                layer_on(_LOWER);
                update_tri_layer(_LOWER, _RAISE, _ADJUST);
            } else {

                if (timer_elapsed(key_timer) < timer_thresh) {
                    tap_code(KC_BSPC);
                }
                layer_off(_LOWER);
                update_tri_layer(_LOWER, _RAISE, _ADJUST);
            }
            return 0;
            break;
        case 128:
            if (record->event.pressed) {
                key_timer = timer_read();
                layer_on(_RAISE);
                update_tri_layer(_LOWER, _RAISE, _ADJUST);
            } else {

                if (timer_elapsed(key_timer) < timer_thresh) {
                    tap_code(KC_BSPC);
                }
                layer_off(_RAISE);
                update_tri_layer(_LOWER, _RAISE, _ADJUST);
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
    }
    return 1;
}
