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
typedef  int matrix_row_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ MATRIX_COLS ; 
 scalar_t__ MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ TIMER_RAW ; 
 int TIMER_RAW_FREQ ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int* matrix ; 
 int /*<<< orphan*/  matrix_last_modified ; 
 int* matrix_prev ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

uint8_t FUNC11(void)
{
    matrix_row_t *tmp;

    tmp = matrix_prev;
    matrix_prev = matrix;
    matrix = tmp;

    uint8_t row, col;
    for (col = 0; col < MATRIX_COLS; col++) {
        FUNC5(col);
        for (row = 0; row < MATRIX_ROWS; row++) {
            //KEY_SELECT(row, col);
            FUNC6(row);
            FUNC8(2);

            // Not sure this is needed. This just emulates HHKB controller's behaviour.
            if (matrix_prev[row] & (1<<col)) {
                FUNC2();
            }
            FUNC8(10);

            // NOTE: KEY_STATE is valid only in 20us after KEY_ENABLE.
            // If V-USB interrupts in this section we could lose 40us or so
            // and would read invalid value from KEY_STATE.
            uint8_t last = TIMER_RAW;

            FUNC0();

            // Wait for KEY_STATE outputs its value.
            FUNC8(2);

            if (FUNC3()) {
                matrix[row] &= ~(1<<col);
            } else {
                matrix[row] |= (1<<col);
            }

            // Ignore if this code region execution time elapses more than 20us.
            // MEMO: 20[us] * (TIMER_RAW_FREQ / 1000000)[count per us]
            // MEMO: then change above using this rule: a/(b/c) = a*1/(b/c) = a*(c/b)
            if (FUNC7(TIMER_RAW, last) > 20/(1000000/TIMER_RAW_FREQ)) {
                matrix[row] = matrix_prev[row];
            }

            FUNC8(5);
            FUNC1();
            FUNC4();

            // NOTE: KEY_STATE keep its state in 20us after KEY_ENABLE.
            // This takes 25us or more to make sure KEY_STATE returns to idle state.
            FUNC8(75);
        }
        if (matrix[row] ^ matrix_prev[row]) {
            matrix_last_modified = FUNC10();
        }
    }
    FUNC9();
    return 1;
}