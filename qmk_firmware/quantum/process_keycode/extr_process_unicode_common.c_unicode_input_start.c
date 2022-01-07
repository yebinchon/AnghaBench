
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input_mode; } ;


 int KC_LALT ;
 int KC_PPLS ;
 int KC_U ;




 int UNICODE_KEY_LNX ;
 int UNICODE_KEY_OSX ;
 int UNICODE_KEY_WINC ;
 int UNICODE_TYPE_DELAY ;
 int clear_mods () ;
 int get_mods () ;
 int register_code (int ) ;
 int tap_code (int ) ;
 int tap_code16 (int ) ;
 TYPE_1__ unicode_config ;
 int unicode_saved_mods ;
 int wait_ms (int ) ;

__attribute__((weak)) void unicode_input_start(void) {
    unicode_saved_mods = get_mods();
    clear_mods();

    switch (unicode_config.input_mode) {
        case 130:
            register_code(UNICODE_KEY_OSX);
            break;
        case 131:
            tap_code16(UNICODE_KEY_LNX);
            break;
        case 129:
            register_code(KC_LALT);
            tap_code(KC_PPLS);
            break;
        case 128:
            tap_code(UNICODE_KEY_WINC);
            tap_code(KC_U);
            break;
    }

    wait_ms(UNICODE_TYPE_DELAY);
}
