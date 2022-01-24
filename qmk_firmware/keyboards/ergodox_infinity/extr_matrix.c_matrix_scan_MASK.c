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
 int LOCAL_MATRIX_ROWS ; 
 int MATRIX_ROWS ; 
 int debouncing ; 
 int /*<<< orphan*/  debouncing_time ; 
 scalar_t__ FUNC0 () ; 
 int* matrix ; 
 int* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

uint8_t FUNC8(void)
{
    for (int row = 0; row < LOCAL_MATRIX_ROWS; row++) {
        matrix_row_t data = 0;

        // strobe row
        switch (row) {
            case 0: FUNC4(GPIOB, 2);    break;
            case 1: FUNC4(GPIOB, 3);    break;
            case 2: FUNC4(GPIOB, 18);   break;
            case 3: FUNC4(GPIOB, 19);   break;
            case 4: FUNC4(GPIOC, 0);    break;
            case 5: FUNC4(GPIOC, 9);    break;
            case 6: FUNC4(GPIOC, 10);   break;
            case 7: FUNC4(GPIOC, 11);   break;
            case 8: FUNC4(GPIOD, 0);    break;
        }

        // need wait to settle pin state
        // if you wait too short, or have a too high update rate
        // the keyboard might freeze, or there might not be enough
        // processing power to update the LCD screen properly.
        // 20us, or two ticks at 100000Hz seems to be OK
        FUNC7(20);

        // read col data: { PTD1, PTD4, PTD5, PTD6, PTD7 }
        data = ((FUNC3(GPIOD) & 0xF0) >> 3) |
               ((FUNC3(GPIOD) & 0x02) >> 1);

        // un-strobe row
        switch (row) {
            case 0: FUNC2(GPIOB, 2);  break;
            case 1: FUNC2(GPIOB, 3);  break;
            case 2: FUNC2(GPIOB, 18); break;
            case 3: FUNC2(GPIOB, 19); break;
            case 4: FUNC2(GPIOC, 0);  break;
            case 5: FUNC2(GPIOC, 9);  break;
            case 6: FUNC2(GPIOC, 10); break;
            case 7: FUNC2(GPIOC, 11); break;
            case 8: FUNC2(GPIOD, 0);  break;
        }

        if (matrix_debouncing[row] != data) {
            matrix_debouncing[row] = data;
            debouncing = true;
            debouncing_time = FUNC6();
        }
    }

    uint8_t offset = 0;
#ifdef MASTER_IS_ON_RIGHT
    if (is_serial_link_master()) {
        offset = MATRIX_ROWS - LOCAL_MATRIX_ROWS;
    }
#endif

    if (debouncing && FUNC5(debouncing_time) > DEBOUNCE) {
        for (int row = 0; row < LOCAL_MATRIX_ROWS; row++) {
            matrix[offset + row] = matrix_debouncing[row];
        }
        debouncing = false;
    }
    FUNC1();
    return 1;
}