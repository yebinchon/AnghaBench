#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uint16_t ;

/* Variables and functions */
 int MATRIX_COLS ; 
 int MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * arguments ; 
 int /*<<< orphan*/ *** keymaps ; 
 char* newline ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,char**,int) ; 

void FUNC6(void) {
    if (FUNC4(arguments[1]) != 0) {
        uint16_t layer = FUNC5(arguments[1], (char **)NULL, 10);
        for (int r = 0; r < MATRIX_ROWS; r++) {
            for (int c = 0; c < MATRIX_COLS; c++) {
                uint16_t keycode = FUNC1(&keymaps[layer][r][c]);
                char     keycode_s[8];
                FUNC3(keycode_s, "0x%04x,", keycode);
                FUNC2(keycode_s);
            }
            FUNC2(newline);
        }
    } else {
#ifdef TERMINAL_HELP
        SEND_STRING("usage: keymap <layer>\n");
#endif
    }
}