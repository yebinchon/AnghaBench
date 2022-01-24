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
 int /*<<< orphan*/ * matrix ; 
 int /*<<< orphan*/ * matrix_debouncing ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

uint8_t FUNC4(void)
{
    // Set col, read rows
    for (uint8_t current_col = 0; current_col < MATRIX_COLS; current_col++) {
        bool matrix_changed = FUNC1(matrix_debouncing, current_col);
        if (matrix_changed) {
            debouncing = true;
            debouncing_time = FUNC3();
        }
    }

    if (debouncing && (FUNC2(debouncing_time) > DEBOUNCE)) {
        for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
            matrix[i] = matrix_debouncing[i];
        }
        debouncing = false;
    }

    FUNC0();
    return 1;
}