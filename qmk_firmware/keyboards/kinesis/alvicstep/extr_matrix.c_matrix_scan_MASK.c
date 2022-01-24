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
 scalar_t__ MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ debouncing ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__* matrix ; 
 scalar_t__* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

uint8_t FUNC7(void)
{

    for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
        FUNC5(i);
        uint8_t row = FUNC4(i);
        if (matrix_debouncing[i] != row) {
            matrix_debouncing[i] = row;
            if (debouncing) {
                FUNC1("bounce!: "); FUNC2(debouncing); FUNC1("\n");
            }
            debouncing = DEBOUNCE;
        }
        FUNC6();
    }

    if (debouncing) {
        if (--debouncing) {
            FUNC0(1);
        } else {
            for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
                matrix[i] = matrix_debouncing[i];
            }
        }
    }
    FUNC3();
    return 1;
}