
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t matrix_row_t ;


 int E2 ;
 size_t MATRIX_ROWS ;
 size_t ROW_SHIFTER ;
 scalar_t__ readPin (int ) ;
 int * row_pins ;
 int select_col (size_t) ;
 int unselect_cols () ;
 int wait_us (int) ;

__attribute__((used)) static bool read_rows_on_col(matrix_row_t current_matrix[], uint8_t current_col) {
    bool matrix_changed = 0;


    select_col(current_col);
    wait_us(30);


    for (uint8_t row_index = 0; row_index < MATRIX_ROWS; row_index++) {

        matrix_row_t last_row_value = current_matrix[row_index];



        if (row_index == 3 && current_col == 0) {
            if (readPin(E2) == 0) {

                current_matrix[row_index] |= (ROW_SHIFTER << current_col);
            } else {

                current_matrix[row_index] &= ~(ROW_SHIFTER << current_col);
            }
        } else {
            if (readPin(row_pins[row_index]) == 0) {

                current_matrix[row_index] &= ~(ROW_SHIFTER << current_col);
            } else {

                current_matrix[row_index] |= (ROW_SHIFTER << current_col);
            }
        }


        if ((last_row_value != current_matrix[row_index]) && !(matrix_changed)) {
            matrix_changed = 1;
        }
    }


    unselect_cols();

    return matrix_changed;
}
