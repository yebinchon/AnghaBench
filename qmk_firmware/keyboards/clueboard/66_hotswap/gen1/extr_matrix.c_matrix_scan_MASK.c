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
 int MATRIX_COLS ; 
 int MATRIX_ROWS ; 
 int debouncing ; 
 int /*<<< orphan*/  debouncing_time ; 
 int* matrix ; 
 int* matrix_debouncing ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

uint8_t FUNC7(void) {
    // actual matrix
    for (int col = 0; col < MATRIX_COLS; col++) {
        matrix_row_t data = 0;

        // strobe col { PB10, PB2, PB1, PB0, PA7, PB4, PB3, PB7 }
        switch (col) {
            case 0: FUNC3(GPIOB, 10); break;
            case 1: FUNC3(GPIOB, 2); break;
            case 2: FUNC3(GPIOB, 1); break;
            case 3: FUNC3(GPIOB, 0); break;
            case 4: FUNC3(GPIOA, 7); break;
            case 5: FUNC3(GPIOB, 4); break;
            case 6: FUNC3(GPIOB, 3); break;
            case 7: FUNC3(GPIOB, 7); break;
        }

        // need wait to settle pin state
        FUNC6(20);

        // read row data { PB11, PA6, PA3, PA2, PA1, PB5, PB6, PC15, PC14, PC13 }
        data = (
            (FUNC2(GPIOB, 11) << 0 ) |
            (FUNC2(GPIOA, 6)  << 1 ) |
            (FUNC2(GPIOA, 3)  << 2 ) |
            (FUNC2(GPIOA, 2) << 3 ) |
            (FUNC2(GPIOA, 1) << 4 ) |
            (FUNC2(GPIOB, 5) << 5 ) |
            (FUNC2(GPIOB, 6) << 6 ) |
            (FUNC2(GPIOC, 15)  << 7 ) |
            (FUNC2(GPIOC, 14)  << 8 ) |
            (FUNC2(GPIOC, 13)  << 9 )
        );

        // unstrobe  col { B11, B10, B2, B1, A7, B0 }
        switch (col) {
            case 0: FUNC1(GPIOB, 10); break;
            case 1: FUNC1(GPIOB, 2); break;
            case 2: FUNC1(GPIOB, 1); break;
            case 3: FUNC1(GPIOB, 0); break;
            case 4: FUNC1(GPIOA, 7); break;
            case 5: FUNC1(GPIOB, 4); break;
            case 6: FUNC1(GPIOB, 3); break;
            case 7: FUNC1(GPIOB, 7); break;
        }

        if (matrix_debouncing[col] != data) {
            matrix_debouncing[col] = data;
            debouncing = true;
            debouncing_time = FUNC5();
        }
    }

    if (debouncing && FUNC4(debouncing_time) > DEBOUNCE) {
        for (int row = 0; row < MATRIX_ROWS; row++) {
            matrix[row] = 0;
            for (int col = 0; col < MATRIX_COLS; col++) {
                matrix[row] |= ((matrix_debouncing[col] & (1 << row) ? 1 : 0) << col);
            }
        }
        debouncing = false;
    }

    FUNC0();

    return 1;
}