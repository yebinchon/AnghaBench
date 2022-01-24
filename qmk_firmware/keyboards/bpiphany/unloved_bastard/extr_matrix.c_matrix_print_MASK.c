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
 scalar_t__ MATRIX_COLS ; 
 scalar_t__ MATRIX_ROWS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 

void FUNC3(void) {
#ifndef NO_PRINT
    FUNC1("\nr\\c ABCDEFGHIJKLMNOPQR\n");
    for (uint8_t row = 0; row < MATRIX_ROWS; row++) {
        matrix_row_t matrix_row = FUNC0(row);
        FUNC2("%02X: ", row);
        for (uint8_t col = 0; col < MATRIX_COLS; col++) {
            bool curr_bit = matrix_row & (1<<col);
            FUNC2("%c", curr_bit ? '*' : '.');
        }
        FUNC1("\n");
    }
#endif
}