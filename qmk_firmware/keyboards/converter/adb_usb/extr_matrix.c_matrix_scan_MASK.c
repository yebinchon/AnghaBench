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
typedef  int uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ debug_matrix ; 
 scalar_t__ is_iso_layout ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

uint8_t FUNC9(void)
{
    /* extra_key is volatile and more convoluted than necessary because gcc refused
    to generate valid code otherwise. Making extra_key uint8_t and constructing codes
    here via codes = extra_key<<8 | 0xFF; would consistently fail to even LOAD
    extra_key from memory, and leave garbage in the high byte of codes. I tried
    dozens of code variations and it kept generating broken assembly output. So
    beware if attempting to make extra_key code more logical and efficient. */
    static volatile uint16_t extra_key = 0xFFFF;
    uint16_t codes;
    uint8_t key0, key1;

    /* tick of last polling */
    static uint16_t tick_ms;

    codes = extra_key;
    extra_key = 0xFFFF;

    if ( codes == 0xFFFF )
    {
        // polling with 12ms interval
        if (FUNC6(tick_ms) < 12) return 0;
        tick_ms = FUNC7();

        codes = FUNC0();
    }

    key0 = codes>>8;
    key1 = codes&0xFF;

    if (debug_matrix && codes) {
        FUNC4("adb_host_kbd_recv: "); FUNC3(codes); FUNC4("\n");
    }

    if (codes == 0) {                           // no keys
        return 0;
    } else if (codes == 0x7F7F) {   // power key press
        FUNC5(0x7F);
    } else if (codes == 0xFFFF) {   // power key release
        FUNC5(0xFF);
    } else if (key0 == 0xFF) {      // error
        FUNC8("adb_host_kbd_recv: ERROR(%d)\n", codes);
        // something wrong or plug-in
        FUNC1();
        return key1;
    } else {
        /* Swap codes for ISO keyboard
         * https://github.com/tmk/tmk_keyboard/issues/35
         *
         * ANSI
         * ,-----------    ----------.
         * | *a|  1|  2     =|Backspa|
         * |-----------    ----------|
         * |Tab  |  Q|     |  ]|   *c|
         * |-----------    ----------|
         * |CapsLo|  A|    '|Return  |
         * |-----------    ----------|
         * |Shift   |      Shift     |
         * `-----------    ----------'
         *
         * ISO
         * ,-----------    ----------.
         * | *a|  1|  2     =|Backspa|
         * |-----------    ----------|
         * |Tab  |  Q|     |  ]|Retur|
         * |-----------    -----`    |
         * |CapsLo|  A|    '| *c|    |
         * |-----------    ----------|
         * |Shif| *b|      Shift     |
         * `-----------    ----------'
         *
         *         ADB scan code   USB usage
         *         -------------   ---------
         * Key     ANSI    ISO     ANSI    ISO
         * ---------------------------------------------
         * *a      0x32    0x0A    0x35    0x35
         * *b      ----    0x32    ----    0x64
         * *c      0x2A    0x2A    0x31    0x31(or 0x32)
         */
        if (is_iso_layout) {
            if ((key0 & 0x7F) == 0x32) {
                key0 = (key0 & 0x80) | 0x0A;
            } else if ((key0 & 0x7F) == 0x0A) {
                key0 = (key0 & 0x80) | 0x32;
            }
        }
        FUNC5(key0);
        if (key1 != 0xFF)       // key1 is 0xFF when no second key.
            extra_key = key1<<8 | 0xFF; // process in a separate call
    }

    FUNC2();
    return 1;
}