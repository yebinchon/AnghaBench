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
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  GPIOC ; 
 int /*<<< orphan*/  GPIOD ; 
 int MATRIX_ROWS ; 
 int debouncing ; 
 int /*<<< orphan*/  debouncing_time ; 
 int* matrix ; 
 int* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

uint8_t FUNC7(void)
{
    for (int row = 0; row < MATRIX_ROWS; row++) {
        matrix_row_t data = 0;
        // strobe row
        switch (row) {
            case 0: FUNC3(GPIOB, 2);    break;
            case 1: FUNC3(GPIOB, 3);    break;
            case 2: FUNC3(GPIOB, 18);   break;
            case 3: FUNC3(GPIOB, 19);   break;
            case 4: FUNC3(GPIOC, 0);    break;
            case 5: FUNC3(GPIOC, 8);    break;
            case 6: FUNC3(GPIOC, 9);    break;
            case 7: FUNC3(GPIOD, 0);    break;
            case 8: FUNC3(GPIOD, 1);    break;
            case 9: FUNC3(GPIOD, 4);    break;
        }

        // need wait to settle pin state
        // if you wait too short, or have a too high update rate
        // the keyboard might freeze, or there might not be enough
        // processing power to update the LCD screen properly.
        // 20us, or two ticks at 100000Hz seems to be OK
        FUNC6(20);

        // read col data: { PTD5, PTD6, PTD7, PTC1, PTC2, PTC3, PTC4, PTC5, PTC6, PTC7 }
        data = ((FUNC2(GPIOC) & 0xFEUL) << 2) |
               ((FUNC2(GPIOD) & 0xE0UL) >> 5);

        // un-strobe row
        switch (row) {
            case 0: FUNC1(GPIOB, 2);  break;
            case 1: FUNC1(GPIOB, 3);  break;
            case 2: FUNC1(GPIOB, 18); break;
            case 3: FUNC1(GPIOB, 19); break;
            case 4: FUNC1(GPIOC, 0);  break;
            case 5: FUNC1(GPIOC, 8);  break;
            case 6: FUNC1(GPIOC, 9);  break;
            case 7: FUNC1(GPIOD, 0);  break;
            case 8: FUNC1(GPIOD, 1);  break;
            case 9: FUNC1(GPIOD, 4);  break;
        }

        if (matrix_debouncing[row] != data) {
            matrix_debouncing[row] = data;
            debouncing = true;
            debouncing_time = FUNC5();
        }
    }

    if (debouncing && FUNC4(debouncing_time) > DEBOUNCE) {
        for (int row = 0; row < MATRIX_ROWS; row++) {
            matrix[row] = matrix_debouncing[row];
        }
        debouncing = false;
    }

    FUNC0();
    return 1;
}