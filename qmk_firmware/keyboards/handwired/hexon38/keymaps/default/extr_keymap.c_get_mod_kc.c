
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int KC_LALT ;
 int KC_LCTL ;
 int KC_LGUI ;
 int KC_LSFT ;
 int KC_RALT ;
 int KC_RCTL ;
 int KC_RGUI ;
 int KC_RSFT ;
 int mod_config (int) ;

uint16_t get_mod_kc(uint16_t keycode) {
    uint8_t mod = mod_config((keycode >> 0x8) & 0x1F);
    switch (mod) {
    case 134:
        return KC_LCTL;
    case 130:
        return KC_RCTL;
    case 132:
        return KC_LSFT;
    case 128:
        return KC_RSFT;
    case 135:
        return KC_LALT;
    case 131:
        return KC_RALT;
    case 133:
        return KC_LGUI;
    case 129:
        return KC_RGUI;
    default:

        return keycode;
    }
}
