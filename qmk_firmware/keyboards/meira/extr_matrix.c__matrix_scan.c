
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
 int read_rows_on_col (int *,scalar_t__) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

uint8_t _matrix_scan(void)
{

    for (uint8_t current_col = 0; current_col < MATRIX_COLS; current_col++) {







             read_rows_on_col(matrix, current_col);


    }
 return 1;
}
