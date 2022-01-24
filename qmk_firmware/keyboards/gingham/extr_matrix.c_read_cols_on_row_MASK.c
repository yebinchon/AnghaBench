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
 size_t MATRIX_COLS ; 
 int PORT_EXPANDER_ADDRESS ; 
 size_t ROW_SHIFTER ; 
 int /*<<< orphan*/ * col_pins ; 
 int /*<<< orphan*/  FUNC0 (int,int,size_t*,int,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(matrix_row_t current_matrix[], uint8_t current_row)
{
    // Store last value of row prior to reading
    matrix_row_t last_row_value = current_matrix[current_row];

    // Clear data in matrix row
    current_matrix[current_row] = 0;

    // Select row and wait for row selecton to stabilize
    FUNC2(current_row);
    FUNC4(30);

    // For each col...
    for(uint8_t col_index = 0; col_index < MATRIX_COLS; col_index++) {
        uint8_t pin_state;
        // Select the col pin to read (active low)
        switch (col_index) {
            case 0 :
                FUNC0((PORT_EXPANDER_ADDRESS << 1), 0x09, &pin_state, 1, 20);
                pin_state = pin_state & 0x01;
                break;
            case 12 :
                FUNC0((PORT_EXPANDER_ADDRESS << 1), 0x09, &pin_state, 1, 20);
                pin_state = pin_state & (1 << 2);
                break;
            case 13 :
                FUNC0((PORT_EXPANDER_ADDRESS << 1), 0x09, &pin_state, 1, 20);
                pin_state = pin_state & (1 << 1);
                break;
            default :
                pin_state = FUNC1(col_pins[col_index]);
        }

        // Populate the matrix row with the state of the col pin
        current_matrix[current_row] |=  pin_state ? 0 : (ROW_SHIFTER << col_index);
    }

    // Unselect row
    FUNC3(current_row);

    return (last_row_value != current_matrix[current_row]);
}