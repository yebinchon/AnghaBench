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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ matrix_row_t ;

/* Variables and functions */
 scalar_t__ DEBOUNCE ; 
 scalar_t__ MATRIX_ROWS ; 
 scalar_t__ debouncing ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ mcp23018_reset_loop ; 
 scalar_t__ mcp23018_status ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

uint8_t FUNC10(void)
{
    if (mcp23018_status) { // if there was an error
        if (++mcp23018_reset_loop == 0) {
            // since mcp23018_reset_loop is 8 bit - we'll try to reset once in 255 matrix scans
            // this will be approx bit more frequent than once per second
            FUNC5("trying to reset mcp23018\n");
            mcp23018_status = FUNC3();
            if (mcp23018_status) {
                FUNC5("left side not responding\n");
            } else {
                FUNC5("left side attached\n");
                FUNC2();
            }
        }
    }

    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        FUNC7(i);
        FUNC9(30);  // without this wait read unstable value.
        matrix_row_t cols = FUNC6(i);
        if (matrix_debouncing[i] != cols) {
            matrix_debouncing[i] = cols;
            if (debouncing) {
                FUNC0("bounce!: "); FUNC1(debouncing); FUNC0("\n");
            }
            debouncing = DEBOUNCE;
        }
        FUNC8();
    }

    if (debouncing) {
        if (--debouncing) {
            FUNC9(1);
            // this should be wait_ms(1) but has been left as-is at EZ's request
        } else {
            for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
                matrix[i] = matrix_debouncing[i];
            }
        }
    }

    FUNC4();

    return 1;
}