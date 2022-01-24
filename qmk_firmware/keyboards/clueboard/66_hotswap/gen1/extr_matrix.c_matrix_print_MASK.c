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
 int MATRIX_COLS ; 
 scalar_t__ MATRIX_ROWS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(void) {
    FUNC1("\nr/c 01234567\n");
    for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
        FUNC1("%X0: ", row);
        matrix_row_t data = FUNC0(row);
        for (int col = 0; col < MATRIX_COLS; col++) {
            if (data & (1<<col))
                FUNC1("1");
            else
                FUNC1("0");
        }
        FUNC1("\n");
    }
}