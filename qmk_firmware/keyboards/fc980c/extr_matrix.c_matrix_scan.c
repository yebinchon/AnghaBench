
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int matrix_row_t ;


 int KEY_ENABLE () ;
 int KEY_HYS_OFF () ;
 int KEY_HYS_ON () ;
 scalar_t__ KEY_STATE () ;
 int KEY_UNABLE () ;
 scalar_t__ MATRIX_COLS ;
 scalar_t__ MATRIX_ROWS ;
 int SET_COL (scalar_t__) ;
 int SET_ROW (scalar_t__) ;
 int TIMER_DIFF_RAW (scalar_t__,scalar_t__) ;
 scalar_t__ TIMER_RAW ;
 int TIMER_RAW_FREQ ;
 int _delay_us (int) ;
 int* matrix ;
 int matrix_last_modified ;
 int* matrix_prev ;
 int matrix_scan_quantum () ;
 int timer_read32 () ;

uint8_t matrix_scan(void)
{
    matrix_row_t *tmp;

    tmp = matrix_prev;
    matrix_prev = matrix;
    matrix = tmp;

    uint8_t row, col;
    for (col = 0; col < MATRIX_COLS; col++) {
        SET_COL(col);
        for (row = 0; row < MATRIX_ROWS; row++) {

            SET_ROW(row);
            _delay_us(2);


            if (matrix_prev[row] & (1<<col)) {
                KEY_HYS_ON();
            }
            _delay_us(10);




            uint8_t last = TIMER_RAW;

            KEY_ENABLE();


            _delay_us(2);

            if (KEY_STATE()) {
                matrix[row] &= ~(1<<col);
            } else {
                matrix[row] |= (1<<col);
            }




            if (TIMER_DIFF_RAW(TIMER_RAW, last) > 20/(1000000/TIMER_RAW_FREQ)) {
                matrix[row] = matrix_prev[row];
            }

            _delay_us(5);
            KEY_HYS_OFF();
            KEY_UNABLE();



            _delay_us(75);
        }
        if (matrix[row] ^ matrix_prev[row]) {
            matrix_last_modified = timer_read32();
        }
    }
    matrix_scan_quantum();
    return 1;
}
