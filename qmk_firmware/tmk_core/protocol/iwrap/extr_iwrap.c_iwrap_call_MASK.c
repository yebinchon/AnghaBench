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

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_LED_CONFIG ; 
 int /*<<< orphan*/  DEBUG_LED_OFF ; 
 int /*<<< orphan*/  DEBUG_LED_ON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* rcv_buf ; 
 int rcv_tail ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void FUNC6(void) {
    char *p;

    FUNC2("SET BT PAIR");
    FUNC0(500);

    p = rcv_buf + rcv_tail;
    while (!FUNC4(p, "SET BT PAIR", 11)) {
        p += 7;
        FUNC5(p, "CALL", 4);
        FUNC5(p + 22, " 11 HID\n\0", 9);
        FUNC3(p);
        FUNC2(p);
        // TODO: skip to next line
        p += 57;

        DEBUG_LED_CONFIG;
        DEBUG_LED_ON;
        FUNC0(500);
        DEBUG_LED_OFF;
        FUNC0(500);
        DEBUG_LED_ON;
        FUNC0(500);
        DEBUG_LED_OFF;
        FUNC0(500);
        DEBUG_LED_ON;
        FUNC0(500);
        DEBUG_LED_OFF;
        FUNC0(500);
        DEBUG_LED_ON;
        FUNC0(500);
        DEBUG_LED_OFF;
        FUNC0(500);
        DEBUG_LED_ON;
        FUNC0(500);
        DEBUG_LED_OFF;
        FUNC0(500);
    }
    FUNC1();
}