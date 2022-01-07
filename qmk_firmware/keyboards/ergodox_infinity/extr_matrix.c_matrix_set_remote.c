
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int matrix_row_t ;


 int LOCAL_MATRIX_ROWS ;
 int MATRIX_ROWS ;
 int * matrix ;

void matrix_set_remote(matrix_row_t* rows, uint8_t index) {
    uint8_t offset = 0;



    offset = LOCAL_MATRIX_ROWS * (index + 1);

    for (int row = 0; row < LOCAL_MATRIX_ROWS; row++) {
        matrix[offset + row] = rows[row];
    }
}
