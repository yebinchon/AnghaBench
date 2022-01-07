
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t matrix_row_t ;


 size_t MATRIX_COLS ;
 size_t ROW_SHIFTER ;
 int * col_pins ;
 scalar_t__ readPin (int ) ;
 int select_row (size_t) ;
 int unselect_row (size_t) ;
 int wait_us (int) ;

__attribute__((used)) static bool read_cols_on_row(matrix_row_t current_matrix[], uint8_t current_row) {

    matrix_row_t last_row_value = current_matrix[current_row];


    current_matrix[current_row] = 0;


    select_row(current_row);
    wait_us(30);


    for (uint8_t col_index = 0; col_index < MATRIX_COLS; col_index++) {

        current_matrix[current_row] |= readPin(col_pins[col_index]) ? 0 : (ROW_SHIFTER << col_index);
    }


    unselect_row(current_row);

    return (last_row_value != current_matrix[current_row]);
}
