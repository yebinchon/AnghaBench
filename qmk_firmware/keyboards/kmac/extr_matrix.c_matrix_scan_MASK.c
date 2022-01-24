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
 int /*<<< orphan*/  MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  raw_matrix ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

uint8_t FUNC3(void) {
    bool changed = false;

    for (uint8_t current_col = 0; current_col < MATRIX_COLS; current_col++) {
        changed |= FUNC2(raw_matrix, current_col);
    }

    FUNC0(raw_matrix, matrix, MATRIX_ROWS, changed);

    FUNC1();

    return (uint8_t)changed;
}