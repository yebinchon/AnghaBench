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

/* Variables and functions */
 scalar_t__ DEBOUNCE ; 
 scalar_t__ MATRIX_COLS ; 
 scalar_t__ MATRIX_ROWS ; 
 int debouncing ; 
 int /*<<< orphan*/  debouncing_time ; 
 scalar_t__ expander_reset_loop ; 
 scalar_t__ expander_status ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * matrix ; 
 int /*<<< orphan*/ * matrix_debouncing ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

uint8_t FUNC7(void)
{
    if (expander_status) { // if there was an error
        if (++expander_reset_loop == 0) {
            // since expander_reset_loop is 8 bit - we'll try to reset once in 255 matrix scans
            // this will be approx bit more frequent than once per second
            FUNC2("trying to reset expander\n");
            FUNC0();
            if (expander_status) {
                FUNC2("left side not responding\n");
            } else {
                FUNC2("left side attached\n");
            }
        }
    }

#if (DIODE_DIRECTION == COL2ROW)
    for (uint8_t current_row = 0; current_row < MATRIX_ROWS; current_row++) {
#       if (DEBOUNCE > 0)
            bool matrix_changed = read_cols_on_row(matrix_debouncing, current_row);

            if (matrix_changed) {
                debouncing = true;
                debouncing_time = timer_read();
            }
#       else
            FUNC3(matrix, current_row);
#       endif
    }

#elif (DIODE_DIRECTION == ROW2COL)
    for (uint8_t current_col = 0; current_col < MATRIX_COLS; current_col++) {
#       if (DEBOUNCE > 0)
            bool matrix_changed = read_rows_on_col(matrix_debouncing, current_col);

            if (matrix_changed) {
                debouncing = true;
                debouncing_time = timer_read();
            }
#       else
            read_rows_on_col(matrix, current_col);
#       endif

    }
#endif

#   if (DEBOUNCE > 0)
        if (debouncing && (timer_elapsed(debouncing_time) > DEBOUNCE)) {
            for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
                matrix[i] = matrix_debouncing[i];
            }
            debouncing = false;
        }
#   endif

    FUNC1();
    return 1;
}