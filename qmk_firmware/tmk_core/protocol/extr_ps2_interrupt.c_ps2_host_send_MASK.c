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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (),int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  ps2_error ; 
 int FUNC10 () ; 

uint8_t FUNC11(uint8_t data) {
    bool parity = true;
    ps2_error   = PS2_ERR_NONE;

    FUNC0();

    /* terminate a transmission if we have */
    FUNC9();
    FUNC3(100);  // 100us [4]p.13, [5]p.50

    /* 'Request to Send' and Start bit */
    FUNC7();
    FUNC4();
    FUNC2(clock_lo, 10000, 10);  // 10ms [5]p.50

    /* Data bit[2-9] */
    for (uint8_t i = 0; i < 8; i++) {
        FUNC3(15);
        if (data & (1 << i)) {
            parity = !parity;
            FUNC6();
        } else {
            FUNC7();
        }
        FUNC2(clock_hi, 50, 2);
        FUNC2(clock_lo, 50, 3);
    }

    /* Parity bit */
    FUNC3(15);
    if (parity) {
        FUNC6();
    } else {
        FUNC7();
    }
    FUNC2(clock_hi, 50, 4);
    FUNC2(clock_lo, 50, 5);

    /* Stop bit */
    FUNC3(15);
    FUNC6();

    /* Ack */
    FUNC2(data_lo, 50, 6);
    FUNC2(clock_lo, 50, 7);

    /* wait for idle state */
    FUNC2(clock_hi, 50, 8);
    FUNC2(data_hi, 50, 9);

    FUNC8();
    FUNC1();
    return FUNC10();
ERROR:
    FUNC8();
    FUNC1();
    return 0;
}