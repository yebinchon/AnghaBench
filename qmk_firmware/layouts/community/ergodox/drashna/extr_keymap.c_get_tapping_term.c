
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int MOD_MASK_ALT ;
 int QK_MOD_TAP ;
 int QK_MOD_TAP_MAX ;
 int TAPPING_TERM ;
 int mod_config (int) ;

uint16_t get_tapping_term(uint16_t keycode) {
    if (keycode >= QK_MOD_TAP && keycode <= QK_MOD_TAP_MAX) {
        if (mod_config(keycode & 0xf) & MOD_MASK_ALT) {
            return (2 * TAPPING_TERM);
        }
    }
    return TAPPING_TERM;
}
