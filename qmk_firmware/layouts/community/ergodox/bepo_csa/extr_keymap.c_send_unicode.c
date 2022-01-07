
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int KC_LALT ;
 int KC_PPLS ;
 int hextokeycode (int) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void send_unicode(uint16_t unicode)
{




    register_code(KC_LALT);
    register_code(KC_PPLS);
    unregister_code(KC_PPLS);

    for (int i = 12; i >= 0; i -= 4) {
        register_code(hextokeycode((unicode >> i) & 0xF));
        unregister_code(hextokeycode((unicode >> i) & 0xF));
    }

    unregister_code(KC_LALT);
}
