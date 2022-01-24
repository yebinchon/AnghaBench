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
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  GPIOC ; 
 int MATRIX_COLS ; 
 int MATRIX_ROWS ; 
 int /*<<< orphan*/  PAL_MODE_INPUT_PULLDOWN ; 
 int /*<<< orphan*/  PAL_MODE_OUTPUT_PUSHPULL ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  matrix_debouncing ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void) {
    FUNC3("matrix init\n");
    //debug_matrix = true;

    // actual matrix setup
    FUNC2(GPIOB, 10, PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 2, PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 1,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 0,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOA, 7,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 4,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 3,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 7,  PAL_MODE_OUTPUT_PUSHPULL);

    FUNC2(GPIOB, 11, PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOA, 6,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOA, 3,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOA, 2, PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOA, 1, PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOB, 5, PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOB, 6, PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOC, 15,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOC, 14,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOC, 13,  PAL_MODE_INPUT_PULLDOWN);

    FUNC1(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
    FUNC1(matrix_debouncing, 0, MATRIX_COLS * sizeof(matrix_row_t));

    FUNC0();
}