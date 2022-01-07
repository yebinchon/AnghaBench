
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int KC_LSFT ;
 int KC_RALT ;
 int * ascii_to_altgr_lut ;
 int * ascii_to_keycode_lut ;
 int * ascii_to_shift_lut ;
 void* pgm_read_byte (int *) ;
 int register_code (int ) ;
 int tap_code (size_t) ;
 int unregister_code (int ) ;

void send_char(char ascii_code) {
    uint8_t keycode = pgm_read_byte(&ascii_to_keycode_lut[(uint8_t)ascii_code]);
    bool is_shifted = pgm_read_byte(&ascii_to_shift_lut[(uint8_t)ascii_code]);
    bool is_altgred = pgm_read_byte(&ascii_to_altgr_lut[(uint8_t)ascii_code]);

    if (is_shifted) {
        register_code(KC_LSFT);
    }
    if (is_altgred) {
        register_code(KC_RALT);
    }
    tap_code(keycode);
    if (is_altgred) {
        unregister_code(KC_RALT);
    }
    if (is_shifted) {
        unregister_code(KC_LSFT);
    }
}
