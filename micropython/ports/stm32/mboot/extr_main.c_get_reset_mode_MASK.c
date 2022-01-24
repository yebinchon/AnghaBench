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

/* Variables and functions */
 int RESET_MODE_LED_STATES ; 
 int RESET_MODE_NUM_STATES ; 
 int RESET_MODE_TIMEOUT_CYCLES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(void) {
    FUNC4();
    int reset_mode = 1;
    if (FUNC5()) {
        // Cycle through reset modes while USR is held
        // Timeout is roughly 20s, where reset_mode=1
        FUNC3();
        FUNC0();
        reset_mode = 0;
        for (int i = 0; i < (RESET_MODE_NUM_STATES * RESET_MODE_TIMEOUT_CYCLES + 1) * 32; i++) {
            if (i % 32 == 0) {
                if (++reset_mode > RESET_MODE_NUM_STATES) {
                    reset_mode = 1;
                }
                uint8_t l = RESET_MODE_LED_STATES >> ((reset_mode - 1) * 4);
                FUNC1(l);
            }
            if (!FUNC5()) {
                break;
            }
            FUNC2(19);
        }
        // Flash the selected reset mode
        for (int i = 0; i < 6; i++) {
            FUNC1(0);
            FUNC2(50);
            uint8_t l = RESET_MODE_LED_STATES >> ((reset_mode - 1) * 4);
            FUNC1(l);
            FUNC2(50);
        }
        FUNC2(300);
    }
    return reset_mode;
}