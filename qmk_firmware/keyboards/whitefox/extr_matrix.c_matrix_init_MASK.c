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
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  GPIOC ; 
 int /*<<< orphan*/  GPIOD ; 
 int MATRIX_ROWS ; 
 int /*<<< orphan*/  PAL_MODE_INPUT_PULLDOWN ; 
 int /*<<< orphan*/  PAL_MODE_OUTPUT_PUSHPULL ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  matrix_debouncing ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
//debug_matrix = true;
    /* Column(sense) */
    FUNC2(GPIOD, 0,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOD, 1,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOD, 4,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOD, 5,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOD, 6,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOD, 7,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOC, 1,  PAL_MODE_INPUT_PULLDOWN);
    FUNC2(GPIOC, 2,  PAL_MODE_INPUT_PULLDOWN);

    /* Row(strobe) */
    FUNC2(GPIOB, 2,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 3,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 18, PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOB, 19, PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOC, 0,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOC, 8,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOC, 9,  PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOC, 10, PAL_MODE_OUTPUT_PUSHPULL);
    FUNC2(GPIOC, 11, PAL_MODE_OUTPUT_PUSHPULL);

    FUNC1(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
    FUNC1(matrix_debouncing, 0, MATRIX_ROWS * sizeof(matrix_row_t));

    FUNC0();
}