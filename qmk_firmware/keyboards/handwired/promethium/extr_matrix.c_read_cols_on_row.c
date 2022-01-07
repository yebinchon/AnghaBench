
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t matrix_row_t ;


 size_t MATRIX_COLS ;
 size_t ROW_SHIFTER ;
 size_t _BV (size_t) ;
 size_t _SFR_IO8 (size_t) ;
 int _delay_us (int) ;
 size_t* col_pins ;
 int select_row (size_t) ;
 size_t* tp_pins ;
 int unselect_row (size_t) ;

__attribute__((used)) static bool read_cols_on_row(matrix_row_t current_matrix[], uint8_t current_row)
    {

        matrix_row_t last_row_value = current_matrix[current_row];


        current_matrix[current_row] = 0;


        if (current_row == 8) {
            for(uint8_t tp_index = 0; tp_index < 3; tp_index++) {


                uint8_t pin = tp_pins[tp_index];
                uint8_t pin_state = (_SFR_IO8(pin >> 4) & _BV(pin & 0xF));


                current_matrix[current_row] |= pin_state ? 0 : (ROW_SHIFTER << tp_index);
            }
            return (last_row_value != current_matrix[current_row]);
        }


        select_row(current_row);
        _delay_us(5);



        for(uint8_t col_index = 0; col_index < MATRIX_COLS; col_index++) {


            uint8_t pin = col_pins[col_index];
            uint8_t pin_state = (_SFR_IO8(pin >> 4) & _BV(pin & 0xF));


            current_matrix[current_row] |= pin_state ? 0 : (ROW_SHIFTER << col_index);
        }


        unselect_row(current_row);

        return (last_row_value != current_matrix[current_row]);
}
