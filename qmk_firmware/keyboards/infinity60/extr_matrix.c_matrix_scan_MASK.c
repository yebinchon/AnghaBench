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
    #ifdef INFINITY_LED
        // strobe row
        switch (row) {
            case 0: palSetPad(GPIOC, 0);    break;
            case 1: palSetPad(GPIOC, 1);    break;
            case 2: palSetPad(GPIOC, 2);    break;
            case 3: palSetPad(GPIOC, 3);    break;
            case 4: palSetPad(GPIOC, 4);    break;
            case 5: palSetPad(GPIOC, 5);    break;
            case 6: palSetPad(GPIOC, 6);    break;
            case 7: palSetPad(GPIOC, 7);    break;
            case 8: palSetPad(GPIOD, 0);    break;
        }
    #else
        // strobe row
        switch (row) {
            case 0: FUNC3(GPIOB, 0);    break;
            case 1: FUNC3(GPIOB, 1);    break;
            case 2: FUNC3(GPIOB, 2);    break;
            case 3: FUNC3(GPIOB, 3);    break;
            case 4: FUNC3(GPIOB, 16);   break;
            case 5: FUNC3(GPIOB, 17);   break;
            case 6: FUNC3(GPIOC, 4);    break;
            case 7: FUNC3(GPIOC, 5);    break;
            case 8: FUNC3(GPIOD, 0);    break;
        }
    #endif

        // need wait to settle pin state
        // if you wait too short, or have a too high update rate
        // the keyboard might freeze, or there might not be enough
        // processing power to update the LCD screen properly.
        // 20us, or two ticks at 100000Hz seems to be OK
        FUNC6(20);

        // read col data
        data = (FUNC2(GPIOD)>>1);
    #ifdef INFINITY_LED
        // un-strobe row
        switch (row) {
            case 0: palClearPad(GPIOC, 0);    break;
            case 1: palClearPad(GPIOC, 1);    break;
            case 2: palClearPad(GPIOC, 2);    break;
            case 3: palClearPad(GPIOC, 3);    break;
            case 4: palClearPad(GPIOC, 4);    break;
            case 5: palClearPad(GPIOC, 5);    break;
            case 6: palClearPad(GPIOC, 6);    break;
            case 7: palClearPad(GPIOC, 7);    break;
            case 8: palClearPad(GPIOD, 0);    break;
        }
    #else
        // un-strobe row
        switch (row) {
            case 0: FUNC1(GPIOB, 0);    break;
            case 1: FUNC1(GPIOB, 1);    break;
            case 2: FUNC1(GPIOB, 2);    break;
            case 3: FUNC1(GPIOB, 3);    break;
            case 4: FUNC1(GPIOB, 16);   break;
            case 5: FUNC1(GPIOB, 17);   break;
            case 6: FUNC1(GPIOC, 4);    break;
            case 7: FUNC1(GPIOC, 5);    break;
            case 8: FUNC1(GPIOD, 0);    break;
        }
    #endif

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