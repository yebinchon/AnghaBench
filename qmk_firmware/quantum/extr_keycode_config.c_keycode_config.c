
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int swap_backslash_backspace; int swap_grave_esc; int no_gui; int swap_rctl_rgui; int swap_ralt_rgui; int swap_lctl_lgui; int swap_lalt_lgui; int swap_control_capslock; int capslock_to_control; } ;
 int KC_LCTRL ;


 int KC_NO ;



 TYPE_1__ keymap_config ;

uint16_t keycode_config(uint16_t keycode) {
    switch (keycode) {
        case 137:
        case 131:
            if (keymap_config.swap_control_capslock || keymap_config.capslock_to_control) {
                return 133;
            }
            return keycode;
        case 133:
            if (keymap_config.swap_control_capslock) {
                return 137;
            }
            if (keymap_config.swap_lctl_lgui) {
                if (keymap_config.no_gui) {
                    return KC_NO;
                }
                return 132;
            }
            return 133;
        case 134:
            if (keymap_config.swap_lalt_lgui) {
                if (keymap_config.no_gui) {
                    return KC_NO;
                }
                return 132;
            }
            return 134;
        case 132:
            if (keymap_config.swap_lalt_lgui) {
                return 134;
            }
            if (keymap_config.swap_lctl_lgui) {
                return KC_LCTRL;
            }
            if (keymap_config.no_gui) {
                return KC_NO;
            }
            return 132;
        case 129:
            if (keymap_config.swap_rctl_rgui) {
                if (keymap_config.no_gui) {
                    return KC_NO;
                }
                return 128;
            }
            return 129;
        case 130:
            if (keymap_config.swap_ralt_rgui) {
                if (keymap_config.no_gui) {
                    return KC_NO;
                }
                return 128;
            }
            return 130;
        case 128:
            if (keymap_config.swap_ralt_rgui) {
                return 130;
            }
            if (keymap_config.swap_rctl_rgui) {
                return 129;
            }
            if (keymap_config.no_gui) {
                return KC_NO;
            }
            return 128;
        case 135:
            if (keymap_config.swap_grave_esc) {
                return 136;
            }
            return 135;
        case 136:
            if (keymap_config.swap_grave_esc) {
                return 135;
            }
            return 136;
        case 139:
            if (keymap_config.swap_backslash_backspace) {
                return 138;
            }
            return 139;
        case 138:
            if (keymap_config.swap_backslash_backspace) {
                return 139;
            }
            return 138;
        default:
            return keycode;
    }
}
