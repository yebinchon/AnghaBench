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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (),int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int ibm4704_error ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

uint8_t FUNC9(uint8_t data) {
    bool parity   = true;  // odd parity
    ibm4704_error = 0;

    FUNC0();

    /* Request to send */
    FUNC7();
    FUNC4();

    /* wait for Start bit(Clock:lo/Data:hi) */
    FUNC2(data_hi, 300, 0x30);

    /* Data bit */
    for (uint8_t i = 0; i < 8; i++) {
        FUNC2(clock_hi, 100, 0x40 + i);
        if (data & (1 << i)) {
            parity = !parity;
            FUNC5();
        } else {
            FUNC6();
        }
        FUNC2(clock_lo, 100, 0x48 + i);
    }

    /* Parity bit */
    FUNC2(clock_hi, 100, 0x34);
    if (parity) {
        FUNC5();
    } else {
        FUNC6();
    }
    FUNC2(clock_lo, 100, 0x35);

    /* Stop bit */
    FUNC2(clock_hi, 100, 0x34);
    FUNC5();

    /* End */
    FUNC2(data_lo, 100, 0x36);

    FUNC7();
    FUNC1();
    return 0;
ERROR:
    FUNC7();
    if (ibm4704_error > 0x30) {
        FUNC8("S:%02X ", ibm4704_error);
    }
    FUNC1();
    return -1;
}