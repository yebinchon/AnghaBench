
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input_mode; } ;


 int KC_ESC ;
 int KC_LALT ;




 int UNICODE_KEY_OSX ;
 int set_mods (int ) ;
 int tap_code (int ) ;
 TYPE_1__ unicode_config ;
 int unicode_saved_mods ;
 int unregister_code (int ) ;

__attribute__((weak)) void unicode_input_cancel(void) {
    switch (unicode_config.input_mode) {
        case 130:
            unregister_code(UNICODE_KEY_OSX);
            break;
        case 131:
        case 128:
            tap_code(KC_ESC);
            break;
        case 129:
            unregister_code(KC_LALT);
            break;
    }

    set_mods(unicode_saved_mods);
}
