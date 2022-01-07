
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t matrix_row_t ;


 size_t MATRIX_COLS ;
 int PORT_EXPANDER_ADDRESS ;
 size_t ROW_SHIFTER ;
 int * col_pins ;
 int i2c_readReg (int,int,size_t*,int,int) ;
 size_t readPin (int ) ;
 int select_row (size_t) ;
 int unselect_row (size_t) ;
 int wait_us (int) ;

__attribute__((used)) static bool read_cols_on_row(matrix_row_t current_matrix[], uint8_t current_row)
{

    matrix_row_t last_row_value = current_matrix[current_row];


    current_matrix[current_row] = 0;


    select_row(current_row);
    wait_us(30);


    for(uint8_t col_index = 0; col_index < MATRIX_COLS; col_index++) {
        uint8_t pin_state;

        switch (col_index) {
            case 0 :
                i2c_readReg((PORT_EXPANDER_ADDRESS << 1), 0x09, &pin_state, 1, 20);
                pin_state = pin_state & 0x01;
                break;
            case 12 :
                i2c_readReg((PORT_EXPANDER_ADDRESS << 1), 0x09, &pin_state, 1, 20);
                pin_state = pin_state & (1 << 2);
                break;
            case 13 :
                i2c_readReg((PORT_EXPANDER_ADDRESS << 1), 0x09, &pin_state, 1, 20);
                pin_state = pin_state & (1 << 1);
                break;
            default :
                pin_state = readPin(col_pins[col_index]);
        }


        current_matrix[current_row] |= pin_state ? 0 : (ROW_SHIFTER << col_index);
    }


    unselect_row(current_row);

    return (last_row_value != current_matrix[current_row]);
}
