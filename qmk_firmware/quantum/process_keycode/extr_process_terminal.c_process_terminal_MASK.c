#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_BUFF_SIZE ; 
#define  KC_BSPC 135 
#define  KC_DOWN 134 
#define  KC_ENTER 133 
#define  KC_ESC 132 
#define  KC_KP_ENTER 131 
#define  KC_LEFT 130 
 int /*<<< orphan*/  KC_LSHIFT ; 
#define  KC_RIGHT 129 
 int /*<<< orphan*/  KC_RSHIFT ; 
#define  KC_UP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int QK_LAYER_TAP ; 
 int QK_LAYER_TAP_MAX ; 
 int QK_MOD_TAP ; 
 int QK_MOD_TAP_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int TERM_OFF ; 
 int TERM_ON ; 
 int /*<<< orphan*/  X_BSPACE ; 
 int /*<<< orphan*/ * buffer ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * cmd_buffer ; 
 size_t current_cmd_buffer_pos ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 char* keycode_to_ascii_lut ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* shifted_keycode_to_ascii_lut ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ terminal_enabled ; 

bool FUNC14(uint16_t keycode, keyrecord_t *record) {
    if (keycode == TERM_ON && record->event.pressed) {
        FUNC6();
        return false;
    }

    if (terminal_enabled && record->event.pressed) {
        if (keycode == TERM_OFF && record->event.pressed) {
            FUNC5();
            return false;
        }

        if ((keycode >= QK_MOD_TAP && keycode <= QK_MOD_TAP_MAX) || (keycode >= QK_LAYER_TAP && keycode <= QK_LAYER_TAP_MAX)) {
            keycode = keycode & 0xFF;
        }

        if (keycode < 256) {
            uint8_t str_len;
            char    char_to_add;
            switch (keycode) {
                case KC_ENTER:
                case KC_KP_ENTER:
                    FUNC9();
                    current_cmd_buffer_pos = 0;
                    FUNC8();
                    return false;
                    break;
                case KC_ESC:
                    FUNC1("\n");
                    FUNC6();
                    return false;
                    break;
                case KC_BSPC:
                    str_len = FUNC11(buffer);
                    if (str_len > 0) {
                        buffer[str_len - 1] = 0;
                        return true;
                    } else {
                        FUNC3();
                        return false;
                    }
                    break;
                case KC_LEFT:
                    return false;
                    break;
                case KC_RIGHT:
                    return false;
                    break;
                case KC_UP:                                             // 0 = recent
                    FUNC4();                                        // check our current buffer position is valid
                    if (current_cmd_buffer_pos <= CMD_BUFF_SIZE - 1) {  // once we get to the top, dont do anything
                        str_len = FUNC11(buffer);
                        for (int i = 0; i < str_len; ++i) {
                            FUNC10(FUNC2(X_BSPACE));  // clear w/e is on the line already
                            // process_terminal(KC_BSPC,record);
                        }
                        FUNC13(buffer, cmd_buffer[current_cmd_buffer_pos], 80);

                        FUNC10(buffer);
                        ++current_cmd_buffer_pos;  // get ready to access the above cmd if up/down is pressed again
                    }
                    return false;
                    break;
                case KC_DOWN:
                    FUNC4();
                    if (current_cmd_buffer_pos >= 0) {  // once we get to the bottom, dont do anything
                        str_len = FUNC11(buffer);
                        for (int i = 0; i < str_len; ++i) {
                            FUNC10(FUNC2(X_BSPACE));  // clear w/e is on the line already
                            // process_terminal(KC_BSPC,record);
                        }
                        FUNC13(buffer, cmd_buffer[current_cmd_buffer_pos], 79);

                        FUNC10(buffer);
                        --current_cmd_buffer_pos;  // get ready to access the above cmd if down/up is pressed again
                    }
                    return false;
                    break;
                default:
                    if (keycode <= 58) {
                        char_to_add = 0;
                        if (FUNC7() & (FUNC0(KC_LSHIFT) | FUNC0(KC_RSHIFT))) {
                            char_to_add = shifted_keycode_to_ascii_lut[keycode];
                        } else if (FUNC7() == 0) {
                            char_to_add = keycode_to_ascii_lut[keycode];
                        }
                        if (char_to_add != 0) {
                            FUNC12(buffer, &char_to_add, 1);
                        }
                    }
                    break;
            }
        }
    }
    return true;
}