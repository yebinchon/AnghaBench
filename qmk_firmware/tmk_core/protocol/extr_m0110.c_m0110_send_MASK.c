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
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  clock_hi ; 
 int /*<<< orphan*/  clock_lo ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ m0110_error ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

uint8_t FUNC10(uint8_t data) {
    m0110_error = 0;

    FUNC9();
    FUNC0(clock_lo, 250, 1);  // keyboard may block long time
    for (uint8_t bit = 0x80; bit; bit >>= 1) {
        FUNC1(clock_lo, 250, 3);
        if (data & bit) {
            FUNC4();
        } else {
            FUNC5();
        }
        FUNC1(clock_hi, 200, 4);
    }
    FUNC3(100);  // hold last bit for 80us
    FUNC6();
    return 1;
ERROR:
    FUNC8("m0110_send err: ");
    FUNC7(m0110_error);
    FUNC8("\n");
    FUNC2(500);
    FUNC6();
    return 0;
}