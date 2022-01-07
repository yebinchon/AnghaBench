
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ MATRIX_COLS ;
 scalar_t__ MATRIX_ROWS ;
 int debouncing ;
 int debouncing_time ;
 int * matrix ;
 int * matrix_debouncing ;
 int matrix_scan_quantum () ;
 int read_rows_on_col (int *,scalar_t__) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

uint8_t matrix_scan(void)
{

    for (uint8_t current_col = 0; current_col < MATRIX_COLS; current_col++) {
        bool matrix_changed = read_rows_on_col(matrix_debouncing, current_col);
        if (matrix_changed) {
            debouncing = 1;
            debouncing_time = timer_read();
        }
    }

    if (debouncing && (timer_elapsed(debouncing_time) > DEBOUNCE)) {
        for (uint8_t i = 0; i < MATRIX_ROWS; i++) {
            matrix[i] = matrix_debouncing[i];
        }
        debouncing = 0;
    }

    matrix_scan_quantum();
    return 1;
}
