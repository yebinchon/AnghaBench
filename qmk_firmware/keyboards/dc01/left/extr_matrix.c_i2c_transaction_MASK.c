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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int i2c_status_t ;

/* Variables and functions */
 int I2C_READ ; 
 int I2C_WRITE ; 
 int MATRIX_COLS_SCANNED ; 
 int MATRIX_ROWS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int* matrix ; 

i2c_status_t FUNC5(uint8_t address, uint32_t mask, uint8_t col_offset) {
    i2c_status_t err = FUNC2((address << 1) | I2C_WRITE, 10);
    FUNC4(0x01, 10); //request data in address 1

    FUNC2((address << 1) | I2C_READ, 5);

    err = FUNC0(10);
    if (err == 0x55) { //synchronization byte

        for (uint8_t i = 0; i < MATRIX_ROWS-1 ; i++) { //assemble slave matrix in main matrix
            matrix[i] &= mask; //mask bits to keep
            err = FUNC0(10);
                matrix[i] |= ((uint32_t)err << (MATRIX_COLS_SCANNED + col_offset)); //add new bits at the end
            }
        //last read request must be followed by a NACK
        matrix[MATRIX_ROWS - 1] &= mask; //mask bits to keep
        err = FUNC1(10);
        matrix[MATRIX_ROWS - 1] |= ((uint32_t)err << (MATRIX_COLS_SCANNED + col_offset)); //add new bits at the end

    } else {
        FUNC3();
        return 1;
    }

    FUNC3();
    return 0;
}