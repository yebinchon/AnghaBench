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
 scalar_t__ PS2_ERR_NONE ; 
 scalar_t__ PS2_ERR_PARITY ; 
 scalar_t__ PS2_ERR_STARTBIT3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  clock_hi ; 
 int /*<<< orphan*/  clock_lo ; 
 int /*<<< orphan*/  data_hi ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  data_lo ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ ps2_error ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

uint8_t FUNC5(void) {
    uint8_t data   = 0;
    bool    parity = true;
    ps2_error      = PS2_ERR_NONE;

    /* release lines(idle state) */
    FUNC2();

    /* start bit [1] */
    FUNC0(clock_lo, 100, 1);  // TODO: this is enough?
    FUNC0(data_lo, 1, 2);
    FUNC0(clock_hi, 50, 3);

    /* data [2-9] */
    for (uint8_t i = 0; i < 8; i++) {
        FUNC0(clock_lo, 50, 4);
        if (FUNC1()) {
            parity = !parity;
            data |= (1 << i);
        }
        FUNC0(clock_hi, 50, 5);
    }

    /* parity [10] */
    FUNC0(clock_lo, 50, 6);
    if (FUNC1() != parity) {
        ps2_error = PS2_ERR_PARITY;
        goto ERROR;
    }
    FUNC0(clock_hi, 50, 7);

    /* stop bit [11] */
    FUNC0(clock_lo, 50, 8);
    FUNC0(data_hi, 1, 9);
    FUNC0(clock_hi, 50, 10);

    FUNC3();
    return data;
ERROR:
    if (ps2_error > PS2_ERR_STARTBIT3) {
        FUNC4("x%02X\n", ps2_error);
    }
    FUNC3();
    return 0;
}