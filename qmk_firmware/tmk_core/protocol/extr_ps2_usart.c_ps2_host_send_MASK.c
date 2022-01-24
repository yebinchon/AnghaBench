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
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (),int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  ps2_error ; 
 int FUNC11 () ; 

uint8_t FUNC12(uint8_t data) {
    bool parity = true;
    ps2_error   = PS2_ERR_NONE;

    FUNC1();

    /* terminate a transmission if we have */
    FUNC10();
    FUNC4(100);  // [4]p.13

    /* 'Request to Send' and Start bit */
    FUNC8();
    FUNC5();
    FUNC3(clock_lo, 10000, 10);  // 10ms [5]p.50

    /* Data bit[2-9] */
    for (uint8_t i = 0; i < 8; i++) {
        FUNC4(15);
        if (data & (1 << i)) {
            parity = !parity;
            FUNC7();
        } else {
            FUNC8();
        }
        FUNC3(clock_hi, 50, 2);
        FUNC3(clock_lo, 50, 3);
    }

    /* Parity bit */
    FUNC4(15);
    if (parity) {
        FUNC7();
    } else {
        FUNC8();
    }
    FUNC3(clock_hi, 50, 4);
    FUNC3(clock_lo, 50, 5);

    /* Stop bit */
    FUNC4(15);
    FUNC7();

    /* Ack */
    FUNC3(data_lo, 50, 6);
    FUNC3(clock_lo, 50, 7);

    /* wait for idle state */
    FUNC3(clock_hi, 50, 8);
    FUNC3(data_hi, 50, 9);

    FUNC9();
    FUNC0();
    FUNC2();
    return FUNC11();
ERROR:
    FUNC9();
    FUNC0();
    FUNC2();
    return 0;
}