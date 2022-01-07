
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int matrix_row_t ;


 int MATRIX_ROWS ;
 int ROW_SHIFTER ;
 scalar_t__ readPin (int ) ;
 int * row_pins ;
 int select_col (int) ;
 int unselect_col (int) ;
 int wait_us (int) ;

__attribute__((used)) static bool read_rows_on_col(matrix_row_t current_matrix[], uint8_t current_col)
{
    bool matrix_changed = 0;


    select_col(current_col);
    wait_us(30);


    for(uint8_t row_index = 0; row_index < MATRIX_ROWS/2; row_index++)
    {
        uint8_t tmp = row_index + MATRIX_ROWS/2;

        matrix_row_t last_row_value = current_matrix[tmp];


        if (readPin(row_pins[row_index]) == 0)
        {

            current_matrix[tmp] |= (ROW_SHIFTER << current_col);
        }
        else
        {

            current_matrix[tmp] &= ~(ROW_SHIFTER << current_col);
        }


        if ((last_row_value != current_matrix[tmp]) && !(matrix_changed))
        {
            matrix_changed = 1;
        }
    }


    unselect_col(current_col);

    return matrix_changed;
}
