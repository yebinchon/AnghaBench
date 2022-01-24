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
typedef  char uint8_t ;

/* Variables and functions */
 char SS_DOWN_CODE ; 
 char SS_TAP_CODE ; 
 char SS_UP_CODE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(const char *str, uint8_t interval) {
    while (1) {
        char ascii_code = *str;
        if (!ascii_code) break;
        if (ascii_code == SS_TAP_CODE) {
            // tap
            uint8_t keycode = *(++str);
            FUNC0(keycode);
            FUNC2(keycode);
        } else if (ascii_code == SS_DOWN_CODE) {
            // down
            uint8_t keycode = *(++str);
            FUNC0(keycode);
        } else if (ascii_code == SS_UP_CODE) {
            // up
            uint8_t keycode = *(++str);
            FUNC2(keycode);
        } else {
            FUNC1(ascii_code);
        }
        ++str;
        // interval
        {
            uint8_t ms = interval;
            while (ms--) FUNC3(1);
        }
    }
}