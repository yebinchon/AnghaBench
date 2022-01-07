
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 int hex_to_keycode (scalar_t__) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void register_hex32(uint32_t hex) {
    bool onzerostart = 1;
    for (int i = 7; i >= 0; i--) {
        if (i <= 3) {
            onzerostart = 0;
        }
        uint8_t digit = ((hex >> (i * 4)) & 0xF);
        if (digit == 0) {
            if (!onzerostart) {
                register_code(hex_to_keycode(digit));
                unregister_code(hex_to_keycode(digit));
            }
        } else {
            register_code(hex_to_keycode(digit));
            unregister_code(hex_to_keycode(digit));
            onzerostart = 0;
        }
    }
}
