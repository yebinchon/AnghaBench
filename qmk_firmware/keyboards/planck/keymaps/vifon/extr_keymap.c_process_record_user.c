
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int key; scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
typedef unsigned long int32_t ;


 int DYN_REC_STOP ;
 scalar_t__ IS_LAYER_ON (int ) ;
 int KC_LSFT ;
 scalar_t__ KC_TRNS ;
 int MO (int ) ;
 int _DL ;
 int _DYN ;
 int _LW ;
 int _NM ;
 unsigned long _PP ;
 unsigned long _QW ;
 int _RS ;
 int _delay_ms (int) ;
 int backlight_toggle () ;
 int bootloader_jump () ;
 int clear_keyboard () ;
 int default_layer_set (unsigned long) ;
 unsigned long default_layer_state ;
 int enable_gaming_layer () ;
 scalar_t__ keymap_key_to_keycode (int ,int ) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 unsigned long layer_state ;
 int process_record (TYPE_2__*) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;
 int register_code (int ) ;
 int timer_elapsed (int) ;
 int timer_read () ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    static uint16_t key_timer;
    static uint8_t ignore_up_events = 0;

    uint16_t macro_kc = (keycode == MO(_DYN) ? DYN_REC_STOP : keycode);
    if (!process_record_dynamic_macro(macro_kc, record)) {
        return 0;
    }

    if (ignore_up_events > 0 && keycode != MO(_DYN) && keycode != 136 && !record->event.pressed) {
        ignore_up_events -= 1;
        return 0;
    }

    switch (keycode) {
    case 135:
        if (record->event.pressed) {
            layer_on(_LW);
        } else {
            layer_off(_LW);
        }
        update_tri_layer(_LW, _RS, _DL);
        return 0;
        break;
    case 131:
        if (record->event.pressed) {
            layer_on(_RS);
        } else {
            layer_off(_RS);
        }
        update_tri_layer(_LW, _RS, _DL);
        return 0;
        break;
    case 129:
        register_code(KC_LSFT);
        break;
    case 136:
        if (!record->event.pressed) {
            ignore_up_events += 1;
        }
        break;
    case 130:
    {

        if ((1UL << _PP) & default_layer_state) {
            int32_t old_default_layer_state = default_layer_state;
            int32_t old_layer_state = layer_state;

            layer_state = 0;
            default_layer_state = (1UL << _QW);

            process_record(record);

            layer_state = old_layer_state;
            default_layer_state = old_default_layer_state;

            return 0;
        }
    }

        if (record->event.pressed) {
            key_timer = timer_read();
        } else {
            if (timer_elapsed(key_timer) >= 500) {
                clear_keyboard();
                backlight_toggle();
                _delay_ms(250);
                backlight_toggle();
                bootloader_jump();
            }
        }
        break;
    case 133:
        if (!record->event.pressed) {
            enable_gaming_layer();
        }
        break;
    case 132:
        if (record->event.pressed) {
            key_timer = timer_read();
        } else {
            if (timer_elapsed(key_timer) >= 250) {
                enable_gaming_layer();
            } else {
                default_layer_set(1UL << _PP);
            }
        }
        break;
    case 134:
        layer_on(_NM);
        break;
    case 128:
        if (record->event.pressed) {
            _delay_ms(250);
        }
        break;
    }


    if (record->event.pressed
        && IS_LAYER_ON(_NM)
        && keymap_key_to_keycode(_NM, record->event.key) == KC_TRNS) {

        layer_off(_NM);
    }

    return 1;
}
