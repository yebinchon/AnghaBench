
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ MATRIX_COLS ;
 scalar_t__ ROWS_PER_HAND ;
 int debouncing ;
 int debouncing_time ;
 scalar_t__ isLeftHand ;
 int * matrix ;
 int * matrix_debouncing ;
 int read_cols_on_row (int *,scalar_t__) ;
 int read_rows_on_col (int *,scalar_t__) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

uint8_t _matrix_scan(void)
{
    int offset = isLeftHand ? 0 : (ROWS_PER_HAND);


    for (uint8_t current_row = 0; current_row < ROWS_PER_HAND; current_row++) {
            read_cols_on_row(matrix+offset, current_row);


    }
    return 1;
}
