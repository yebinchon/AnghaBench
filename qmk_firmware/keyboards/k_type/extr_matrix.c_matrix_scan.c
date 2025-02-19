
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int matrix_row_t ;


 scalar_t__ DEBOUNCE ;
 int GPIOB ;
 int GPIOC ;
 int GPIOD ;
 int MATRIX_ROWS ;
 int debouncing ;
 int debouncing_time ;
 int* matrix ;
 int* matrix_debouncing ;
 int matrix_scan_quantum () ;
 int palClearPad (int ,int) ;
 int palReadPort (int ) ;
 int palSetPad (int ,int) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;
 int wait_us (int) ;

uint8_t matrix_scan(void)
{
    for (int row = 0; row < MATRIX_ROWS; row++) {
        matrix_row_t data = 0;

        switch (row) {
            case 0: palSetPad(GPIOB, 2); break;
            case 1: palSetPad(GPIOB, 3); break;
            case 2: palSetPad(GPIOB, 18); break;
            case 3: palSetPad(GPIOB, 19); break;
            case 4: palSetPad(GPIOC, 0); break;
            case 5: palSetPad(GPIOC, 8); break;
            case 6: palSetPad(GPIOC, 9); break;
            case 7: palSetPad(GPIOD, 0); break;
            case 8: palSetPad(GPIOD, 1); break;
            case 9: palSetPad(GPIOD, 4); break;
        }






        wait_us(20);


        data = ((palReadPort(GPIOC) & 0xFEUL) << 2) |
               ((palReadPort(GPIOD) & 0xE0UL) >> 5);


        switch (row) {
            case 0: palClearPad(GPIOB, 2); break;
            case 1: palClearPad(GPIOB, 3); break;
            case 2: palClearPad(GPIOB, 18); break;
            case 3: palClearPad(GPIOB, 19); break;
            case 4: palClearPad(GPIOC, 0); break;
            case 5: palClearPad(GPIOC, 8); break;
            case 6: palClearPad(GPIOC, 9); break;
            case 7: palClearPad(GPIOD, 0); break;
            case 8: palClearPad(GPIOD, 1); break;
            case 9: palClearPad(GPIOD, 4); break;
        }

        if (matrix_debouncing[row] != data) {
            matrix_debouncing[row] = data;
            debouncing = 1;
            debouncing_time = timer_read();
        }
    }

    if (debouncing && timer_elapsed(debouncing_time) > DEBOUNCE) {
        for (int row = 0; row < MATRIX_ROWS; row++) {
            matrix[row] = matrix_debouncing[row];
        }
        debouncing = 0;
    }

    matrix_scan_quantum();
    return 1;
}
