
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 size_t MATRIX_COLS ;
 size_t matrix_strobe (size_t) ;
 int select_col (size_t) ;
 int select_row (size_t) ;

__attribute__((used)) static
bool matrix_read(uint8_t current_matrix[], uint8_t current_row) {

    uint8_t last_row_value = current_matrix[current_row];


    current_matrix[current_row] = 0;

    select_row(current_row);


    for(uint8_t col_index = 0; col_index < MATRIX_COLS; ++col_index) {

        select_col(col_index) ;



        current_matrix[current_row] |= matrix_strobe(col_index) ;
    }

    bool test = last_row_value != current_matrix[current_row] ;
    return test ;
}
