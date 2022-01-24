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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char) ; 

__attribute__((used)) static bool FUNC8(void) {
    // Send to Bluetoot module WT12
    static bool breaked = false;
    if (!FUNC5())
        return false;
    else {
        uint8_t c;
        c = FUNC6();
        FUNC7(c);
        switch (c) {
            case 0x00:  // BREAK signal
                if (!breaked) {
                    FUNC4("break(? for help): ");
                    breaked = true;
                }
                break;
            case '\r':
                FUNC7('\n');
                FUNC3();
                break;
            case '\b':
                FUNC2();
                break;
            default:
                if (breaked) {
                    FUNC4("\n");
                    FUNC0(c);
                    breaked = false;
                } else {
                    FUNC1(c);
                }
                break;
        }
        return true;
    }
}