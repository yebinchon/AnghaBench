
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MATRIX_COLS ;
 int MATRIX_ROWS ;
 int debounce (int ,int ,int ,int) ;
 int matrix ;
 int matrix_scan_quantum () ;
 int raw_matrix ;
 int read_rows_on_col (int ,scalar_t__) ;

uint8_t matrix_scan(void) {
    bool changed = 0;

    for (uint8_t current_col = 0; current_col < MATRIX_COLS; current_col++) {
        changed |= read_rows_on_col(raw_matrix, current_col);
    }

    debounce(raw_matrix, matrix, MATRIX_ROWS, changed);

    matrix_scan_quantum();

    return (uint8_t)changed;
}
