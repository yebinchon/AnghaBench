
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int hex_to_keycode (int) ;
 int tap_code (int ) ;

void register_hex(uint16_t hex) {
    for (int i = 3; i >= 0; i--) {
        uint8_t digit = ((hex >> (i * 4)) & 0xF);
        tap_code(hex_to_keycode(digit));
    }
}
