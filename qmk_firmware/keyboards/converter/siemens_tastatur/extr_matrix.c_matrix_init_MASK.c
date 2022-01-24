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
typedef  int /*<<< orphan*/  matrix_row_t ;

/* Variables and functions */
 int /*<<< orphan*/  A0 ; 
 int /*<<< orphan*/  A1 ; 
 int /*<<< orphan*/  A10 ; 
 int /*<<< orphan*/  A2 ; 
 int /*<<< orphan*/  A3 ; 
 int /*<<< orphan*/  A4 ; 
 int /*<<< orphan*/  A5 ; 
 int /*<<< orphan*/  A6 ; 
 int /*<<< orphan*/  A7 ; 
 int /*<<< orphan*/  A8 ; 
 int /*<<< orphan*/  A9 ; 
 int /*<<< orphan*/  B11 ; 
 int /*<<< orphan*/  B12 ; 
 int /*<<< orphan*/  B13 ; 
 int /*<<< orphan*/  B14 ; 
 int /*<<< orphan*/  B15 ; 
 int /*<<< orphan*/  B3 ; 
 int /*<<< orphan*/  B4 ; 
 int /*<<< orphan*/  B5 ; 
 int /*<<< orphan*/  B6 ; 
 int /*<<< orphan*/  B7 ; 
 int /*<<< orphan*/  B8 ; 
 int /*<<< orphan*/  B9 ; 
 int /*<<< orphan*/  EXTD1 ; 
 int MATRIX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extcfg ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  matrix_debouncing ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void) {
    //Set I/O as pull-up inputs to read states
    FUNC3(A0);
    FUNC3(A1);
    FUNC3(A2);
    FUNC3(A3);
    FUNC3(A4);
    FUNC3(A5);
    FUNC3(A6);
    FUNC3(A7);
    FUNC3(A8);
    FUNC3(A9);
    FUNC3(A10);
    FUNC3(B3);
    FUNC3(B4);
    FUNC3(B5);
    FUNC3(B6);
    FUNC3(B7);
    FUNC3(B8);
    FUNC3(B9);
    FUNC3(B11);
    FUNC3(B12);
    FUNC3(B13);
    FUNC3(B14);
    FUNC3(B15);

    FUNC2(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
    FUNC2(matrix_debouncing, 0, MATRIX_ROWS * sizeof(matrix_row_t));

    FUNC1();
    //Start interrupt driver
    FUNC0(&EXTD1, &extcfg);
}