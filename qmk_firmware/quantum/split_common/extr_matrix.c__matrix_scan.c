
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_COLS ;
 scalar_t__ ROWS_PER_HAND ;
 int debounce (int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ matrix ;
 int raw_matrix ;
 int read_cols_on_row (int ,scalar_t__) ;
 int read_rows_on_col (int ,scalar_t__) ;
 scalar_t__ thisHand ;

uint8_t _matrix_scan(void) {
    bool changed = 0;



    for (uint8_t current_row = 0; current_row < ROWS_PER_HAND; current_row++) {
        changed |= read_cols_on_row(raw_matrix, current_row);
    }







    debounce(raw_matrix, matrix + thisHand, ROWS_PER_HAND, changed);

    return (uint8_t)changed;
}
