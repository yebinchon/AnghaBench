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
typedef  size_t uint8_t ;
typedef  size_t matrix_row_t ;

/* Variables and functions */
 size_t COL_SHIFTER ; 
 int E2 ; 
 size_t MATRIX_ROWS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int* row_pins ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(matrix_row_t current_matrix[], uint8_t current_col)
{
    bool matrix_changed = false;

    // Select col and wait for col selecton to stabilize
    FUNC2(current_col);
    FUNC4(30);

    // For each row...
    for(uint8_t row_index = 0; row_index < MATRIX_ROWS; row_index++)
    {
        // Store last value of row prior to reading
        matrix_row_t last_row_value = current_matrix[row_index];

        // Check row pin state
        // Use the otherwise unused row: 3, col: 0 for caps lock
        if (row_index == 2 && current_col == 2) {
            // Pin E2 uses active low
            if ((FUNC1(E2 >> 4) & FUNC0(E2 & 0xF)) == 0)
            {
                // Pin LO, set col bit
                current_matrix[row_index] |= (COL_SHIFTER << current_col);
            }
            else
            {
                // Pin HI, clear col bit
                current_matrix[row_index] &= ~(COL_SHIFTER << current_col);
            }
        }
        else {
            if ((FUNC1(row_pins[row_index] >> 4) & FUNC0(row_pins[row_index] & 0xF)))
            {
                // Pin HI, set col bit
                current_matrix[row_index] |= (COL_SHIFTER << current_col);
            }
            else
            {
                // Pin LO, clear col bit
                current_matrix[row_index] &= ~(COL_SHIFTER << current_col);
            }
        }

        // Determine if the matrix changed state
        if ((last_row_value != current_matrix[row_index]) && !(matrix_changed))
        {
            matrix_changed = true;
        }
    }

    // Unselect cols
    FUNC3();

    return matrix_changed;
}