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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * arguments ; 
 int /*<<< orphan*/  FUNC1 (size_t,char*,int) ; 
 int /*<<< orphan*/ *** keymaps ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,char**,int) ; 

void FUNC6(void) {
    if (FUNC4(arguments[1]) != 0 && FUNC4(arguments[2]) != 0 && FUNC4(arguments[3]) != 0) {
        char     keycode_dec[5];
        char     keycode_hex[5];
        uint16_t layer   = FUNC5(arguments[1], (char **)NULL, 10);
        uint16_t row     = FUNC5(arguments[2], (char **)NULL, 10);
        uint16_t col     = FUNC5(arguments[3], (char **)NULL, 10);
        uint16_t keycode = FUNC2(&keymaps[layer][row][col]);
        FUNC1(keycode, keycode_dec, 10);
        FUNC1(keycode, keycode_hex, 16);
        FUNC0("0x");
        FUNC3(keycode_hex);
        FUNC0(" (");
        FUNC3(keycode_dec);
        FUNC0(")\n");
    } else {
#ifdef TERMINAL_HELP
        SEND_STRING("usage: keycode <layer> <row> <col>\n");
#endif
    }
}