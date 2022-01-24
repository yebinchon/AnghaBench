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
 scalar_t__ MATRIX_COLS ; 
 scalar_t__ MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  raw_matrix ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

uint8_t FUNC4(void) {
    bool changed = false;

#if defined(DIRECT_PINS) || (DIODE_DIRECTION == COL2ROW)
    // Set row, read cols
    for (uint8_t current_row = 0; current_row < MATRIX_ROWS; current_row++) {
        changed |= FUNC2(raw_matrix, current_row);
    }
#elif (DIODE_DIRECTION == ROW2COL)
    // Set col, read rows
    for (uint8_t current_col = 0; current_col < MATRIX_COLS; current_col++) {
        changed |= read_rows_on_col(raw_matrix, current_col);
    }
#endif

    FUNC0(raw_matrix, matrix, MATRIX_ROWS, changed);

    FUNC1();
    return (uint8_t)changed;
}