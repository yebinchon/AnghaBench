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
typedef  int matrix_row_t ;

/* Variables and functions */
 scalar_t__ DEBOUNCE ; 
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  GPIOC ; 
 int /*<<< orphan*/  GPIOD ; 
 int MATRIX_ROWS ; 
 int debouncing ; 
 int /*<<< orphan*/  debouncing_time ; 
 int* matrix ; 
 int* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

uint8_t FUNC6(void)
{
    for (int row = 0; row < MATRIX_ROWS; row++) {
        matrix_row_t data = 0;

        // strobe row
        switch (row) {
            case 0: FUNC2(GPIOB, 11);    break;
            case 1: FUNC2(GPIOB, 10);    break;
            case 2: FUNC2(GPIOB, 2);   	break;
            case 3: FUNC2(GPIOB, 1);   break;
            case 4: FUNC2(GPIOB, 0);    break;
        }

        FUNC5(20); // need wait to settle pin state

        // read col data: { PTA15, PTC10, PTC11, PTC12, PTD2, PTB3, PTB4, PTB5, PTB6, PTB7, PTB8, PTB9, PTA2, PTA3 }
        data = ((FUNC1(GPIOA) & 0x8000UL) >> 15) |	// 0
        	   ((FUNC1(GPIOC) & 0x1C00UL) >> 9) |		// 1, 2, 3
			   ((FUNC1(GPIOD) & 0x0004UL) << 2) |		// 4
			   ((FUNC1(GPIOB) & 0x03F8UL) << 2) |		// 5, 6, 7, 8, 9, 10, 11
			   ((FUNC1(GPIOA) & 0x000CUL) << 10);    // 12, 13

        // un-strobe row
        switch (row) {
        	case 0: FUNC0(GPIOB, 11);    break;
        	case 1: FUNC0(GPIOB, 10);    break;
        	case 2: FUNC0(GPIOB, 2);	  break;
        	case 3: FUNC0(GPIOB, 1);   break;
        	case 4: FUNC0(GPIOB, 0);    break;
        }

        if (matrix_debouncing[row] != data) {
            matrix_debouncing[row] = data;
            debouncing = true;
            debouncing_time = FUNC4();
        }
    }

    if (debouncing && FUNC3(debouncing_time) > DEBOUNCE) {
        for (int row = 0; row < MATRIX_ROWS; row++) {
            matrix[row] = matrix_debouncing[row];
        }
        debouncing = false;
    }
    return 1;
}