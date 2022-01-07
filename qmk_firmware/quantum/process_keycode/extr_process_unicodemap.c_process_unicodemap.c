
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ QK_UNICODEMAP ;
 scalar_t__ QK_UNICODEMAP_PAIR_MAX ;
 scalar_t__ UC_OSX ;
 scalar_t__ UC_WIN ;
 scalar_t__ get_unicode_input_mode () ;
 int pgm_read_dword (scalar_t__) ;
 int register_hex32 (int) ;
 int unicode_input_cancel () ;
 int unicode_input_finish () ;
 int unicode_input_start () ;
 scalar_t__ unicode_map ;
 scalar_t__ unicodemap_index (scalar_t__) ;

bool process_unicodemap(uint16_t keycode, keyrecord_t *record) {
    if (keycode >= QK_UNICODEMAP && keycode <= QK_UNICODEMAP_PAIR_MAX && record->event.pressed) {
        unicode_input_start();

        uint32_t code = pgm_read_dword(unicode_map + unicodemap_index(keycode));
        uint8_t input_mode = get_unicode_input_mode();

        if (code > 0x10FFFF || (code > 0xFFFF && input_mode == UC_WIN)) {

            unicode_input_cancel();
        } else if (code > 0xFFFF && input_mode == UC_OSX) {

            code -= 0x10000;
            uint32_t lo = code & 0x3FF, hi = (code & 0xFFC00) >> 10;
            register_hex32(hi + 0xD800);
            register_hex32(lo + 0xDC00);
            unicode_input_finish();
        } else {
            register_hex32(code);
            unicode_input_finish();
        }
    }
    return 1;
}
