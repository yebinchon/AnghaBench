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
 int /*<<< orphan*/  PS2_ERR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (),int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ps2_error ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

uint8_t FUNC8(uint8_t data) {
    bool parity = true;
    ps2_error   = PS2_ERR_NONE;

    /* terminate a transmission if we have */
    FUNC5();
    FUNC7(100);  // 100us [4]p.13, [5]p.50

    /* 'Request to Send' and Start bit */
    FUNC4();
    FUNC1();
    FUNC0(clock_lo, 10000, 10);  // 10ms [5]p.50

    /* Data bit */
    for (uint8_t i = 0; i < 8; i++) {
        FUNC7(15);
        if (data & (1 << i)) {
            parity = !parity;
            FUNC3();
        } else {
            FUNC4();
        }
        FUNC0(clock_hi, 50, 2);
        FUNC0(clock_lo, 50, 3);
    }

    /* Parity bit */
    FUNC7(15);
    if (parity) {
        FUNC3();
    } else {
        FUNC4();
    }
    FUNC0(clock_hi, 50, 4);
    FUNC0(clock_lo, 50, 5);

    /* Stop bit */
    FUNC7(15);
    FUNC3();

    /* Ack */
    FUNC0(data_lo, 50, 6);
    FUNC0(clock_lo, 50, 7);

    /* wait for idle state */
    FUNC0(clock_hi, 50, 8);
    FUNC0(data_hi, 50, 9);

    FUNC5();
    return FUNC6();
ERROR:
    FUNC5();
    return 0;
}