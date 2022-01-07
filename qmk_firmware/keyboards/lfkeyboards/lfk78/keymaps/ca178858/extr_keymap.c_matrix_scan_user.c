
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LGUI ;
 int KC_SPC ;
 int MOD_BIT (int ) ;
 int get_mods () ;
 int register_code (int ) ;
 scalar_t__ spam_space ;
 int unregister_code (int ) ;

void matrix_scan_user(void) {
    if(spam_space && !(get_mods() & (MOD_BIT(KC_LGUI)))){
        register_code(KC_SPC);
        unregister_code(KC_SPC);
    }
}
