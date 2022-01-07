
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
 int PLOVER_MODE ;
 int RGBLIGHT_MODE_BREATHING ;
 int RGBLIGHT_MODE_KNIGHT ;
 int RGBLIGHT_MODE_STATIC_LIGHT ;
 int biton32 (int ) ;
 int plover_toggle () ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom_blue () ;
 int rgblight_sethsv_noeeprom_cyan () ;
 int rgblight_sethsv_noeeprom_green () ;
 int rgblight_sethsv_noeeprom_magenta () ;
 int rgblight_sethsv_noeeprom_red () ;
 int rgblight_sethsv_noeeprom_yellow () ;

uint32_t layer_state_set_user(uint32_t state) {
    uint8_t layer = biton32(state);

    switch (layer) {
        case 135:
            rgblight_sethsv_noeeprom_green();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_STATIC_LIGHT);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        case 128:
            rgblight_sethsv_noeeprom_red();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_BREATHING + 3);

            if (!(PLOVER_MODE)) {
                plover_toggle();
                PLOVER_MODE = 1;
            }

            break;

        case 133:
            rgblight_sethsv_noeeprom_red();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        case 137:
            rgblight_sethsv_noeeprom_blue();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        case 130:
            rgblight_sethsv_noeeprom_blue();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        case 129:
            rgblight_sethsv_noeeprom_blue();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        case 132:
            rgblight_sethsv_noeeprom_cyan();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        case 131:
            rgblight_sethsv_noeeprom_yellow();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        case 136:
            rgblight_sethsv_noeeprom_magenta();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        case 134:
            rgblight_sethsv_noeeprom_magenta();
            rgblight_mode_noeeprom(RGBLIGHT_MODE_KNIGHT + 2);

            if (PLOVER_MODE) {
                plover_toggle();
                PLOVER_MODE = 0;
            }

            break;

        default:
            break;
    }

    return state;
}
