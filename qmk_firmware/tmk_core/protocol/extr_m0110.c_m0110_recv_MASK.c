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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  clock_hi ; 
 int /*<<< orphan*/  clock_lo ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ m0110_error ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

uint8_t FUNC7(void) {
    uint8_t data = 0;
    m0110_error  = 0;

    FUNC0(clock_lo, 250, 1);  // keyboard may block long time
    for (uint8_t i = 0; i < 8; i++) {
        data <<= 1;
        FUNC1(clock_lo, 200, 2);
        FUNC1(clock_hi, 200, 3);
        if (FUNC3()) {
            data |= 1;
        }
    }
    FUNC4();
    return data;
ERROR:
    FUNC6("m0110_recv err: ");
    FUNC5(m0110_error);
    FUNC6("\n");
    FUNC2(500);
    FUNC4();
    return 0xFF;
}