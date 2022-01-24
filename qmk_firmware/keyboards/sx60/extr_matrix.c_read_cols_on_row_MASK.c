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
typedef  int uint16_t ;
typedef  int matrix_row_t ;

/* Variables and functions */
 size_t ATMEGA_COLS ; 
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  I2C_ADDR_READ ; 
 int /*<<< orphan*/  I2C_ADDR_WRITE ; 
 size_t ROW_SHIFTER ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 size_t* col_pins ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ mcp23018_status ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static bool FUNC9(matrix_row_t current_matrix[], uint8_t current_row)
{
    /* Store last value of row prior to reading */
    matrix_row_t last_row_value = current_matrix[current_row];

    /* Clear data in matrix row */
    current_matrix[current_row] = 0;

    /* Select row and wait for row selecton to stabilize */
    FUNC6(current_row);
    FUNC8(30);

    if (mcp23018_status) {
        /* if there was an error */
        return 0;
    } else {
        uint16_t data = 0;
        mcp23018_status = FUNC3(I2C_ADDR_WRITE);    if (mcp23018_status) goto out;
        mcp23018_status = FUNC5(GPIOA);             if (mcp23018_status) goto out;
        mcp23018_status = FUNC3(I2C_ADDR_READ);     if (mcp23018_status) goto out;
        data = FUNC2();
        data = ~data;
    out:
        FUNC4();
        current_matrix[current_row] |= (data << 8);
    }

    /* For each col... */
    for(uint8_t col_index = 0; col_index < ATMEGA_COLS; col_index++) {
        /* Select the col pin to read (active low) */
        uint8_t pin = col_pins[col_index];
        uint8_t pin_state = (FUNC1(pin >> 4) & FUNC0(pin & 0xF));

        /* Populate the matrix row with the state of the col pin */
        current_matrix[current_row] |=  pin_state ? 0 : (ROW_SHIFTER << col_index);
    }

    /* Unselect row */
    FUNC7();

    return (last_row_value != current_matrix[current_row]);
}