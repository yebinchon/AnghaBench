
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int CMD_BUFF_SIZE ;






 int KC_LSHIFT ;

 int KC_RSHIFT ;

 int MOD_BIT (int ) ;
 int QK_LAYER_TAP ;
 int QK_LAYER_TAP_MAX ;
 int QK_MOD_TAP ;
 int QK_MOD_TAP_MAX ;
 int SEND_STRING (char*) ;
 int * SS_TAP (int ) ;
 int TERMINAL_BELL () ;
 int TERM_OFF ;
 int TERM_ON ;
 int X_BSPACE ;
 int * buffer ;
 int check_pos () ;
 int * cmd_buffer ;
 size_t current_cmd_buffer_pos ;
 int disable_terminal () ;
 int enable_terminal () ;
 int get_mods () ;
 char* keycode_to_ascii_lut ;
 int process_terminal_command () ;
 int push_to_cmd_buffer () ;
 int send_string (int *) ;
 char* shifted_keycode_to_ascii_lut ;
 int strlen (int *) ;
 int strncat (int *,char*,int) ;
 int strncpy (int *,int ,int) ;
 scalar_t__ terminal_enabled ;

bool process_terminal(uint16_t keycode, keyrecord_t *record) {
    if (keycode == TERM_ON && record->event.pressed) {
        enable_terminal();
        return 0;
    }

    if (terminal_enabled && record->event.pressed) {
        if (keycode == TERM_OFF && record->event.pressed) {
            disable_terminal();
            return 0;
        }

        if ((keycode >= QK_MOD_TAP && keycode <= QK_MOD_TAP_MAX) || (keycode >= QK_LAYER_TAP && keycode <= QK_LAYER_TAP_MAX)) {
            keycode = keycode & 0xFF;
        }

        if (keycode < 256) {
            uint8_t str_len;
            char char_to_add;
            switch (keycode) {
                case 133:
                case 131:
                    push_to_cmd_buffer();
                    current_cmd_buffer_pos = 0;
                    process_terminal_command();
                    return 0;
                    break;
                case 132:
                    SEND_STRING("\n");
                    enable_terminal();
                    return 0;
                    break;
                case 135:
                    str_len = strlen(buffer);
                    if (str_len > 0) {
                        buffer[str_len - 1] = 0;
                        return 1;
                    } else {
                        TERMINAL_BELL();
                        return 0;
                    }
                    break;
                case 130:
                    return 0;
                    break;
                case 129:
                    return 0;
                    break;
                case 128:
                    check_pos();
                    if (current_cmd_buffer_pos <= CMD_BUFF_SIZE - 1) {
                        str_len = strlen(buffer);
                        for (int i = 0; i < str_len; ++i) {
                            send_string(SS_TAP(X_BSPACE));

                        }
                        strncpy(buffer, cmd_buffer[current_cmd_buffer_pos], 80);

                        send_string(buffer);
                        ++current_cmd_buffer_pos;
                    }
                    return 0;
                    break;
                case 134:
                    check_pos();
                    if (current_cmd_buffer_pos >= 0) {
                        str_len = strlen(buffer);
                        for (int i = 0; i < str_len; ++i) {
                            send_string(SS_TAP(X_BSPACE));

                        }
                        strncpy(buffer, cmd_buffer[current_cmd_buffer_pos], 79);

                        send_string(buffer);
                        --current_cmd_buffer_pos;
                    }
                    return 0;
                    break;
                default:
                    if (keycode <= 58) {
                        char_to_add = 0;
                        if (get_mods() & (MOD_BIT(KC_LSHIFT) | MOD_BIT(KC_RSHIFT))) {
                            char_to_add = shifted_keycode_to_ascii_lut[keycode];
                        } else if (get_mods() == 0) {
                            char_to_add = keycode_to_ascii_lut[keycode];
                        }
                        if (char_to_add != 0) {
                            strncat(buffer, &char_to_add, 1);
                        }
                    }
                    break;
            }
        }
    }
    return 1;
}
