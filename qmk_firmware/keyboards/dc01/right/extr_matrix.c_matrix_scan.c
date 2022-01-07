
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ DEBOUNCE ;
 scalar_t__ DEVICE_STATE_Configured ;
 scalar_t__ MATRIX_COLS ;
 scalar_t__ MATRIX_ROWS ;
 scalar_t__ USB_DeviceState ;
 int debouncing ;
 int debouncing_time ;
 int* i2c_slave_reg ;
 int* matrix ;
 int* matrix_debouncing ;
 int matrix_scan_quantum () ;
 int read_cols_on_row (int*,scalar_t__) ;
 int read_rows_on_col (int*,scalar_t__) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;

uint8_t matrix_scan(void)
{



    for (uint8_t current_row = 0; current_row < MATRIX_ROWS; current_row++) {
            read_cols_on_row(matrix, current_row);


    }
        if (USB_DeviceState != DEVICE_STATE_Configured){
            i2c_slave_reg[1] = 0x55;
            for (uint8_t i = 0; i < MATRIX_ROWS; i++){
                i2c_slave_reg[i+2] = matrix[i];
            }
        }

    matrix_scan_quantum();
    return 1;
}
