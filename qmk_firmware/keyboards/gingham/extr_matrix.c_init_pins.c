
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MATRIX_COLS ;
 int PORT_EXPANDER_ADDRESS ;
 int * col_pins ;
 int i2c_writeReg (int,int,int*,int,int) ;
 int setPinInputHigh (int ) ;
 int unselect_rows () ;

__attribute__((used)) static void init_pins(void) {
    unselect_rows();

    uint8_t send_data = 0x07;
    i2c_writeReg((PORT_EXPANDER_ADDRESS << 1), 0x00, &send_data, 1, 20);

    i2c_writeReg((PORT_EXPANDER_ADDRESS << 1), 0x06, &send_data, 1, 20);

    for (uint8_t x = 0; x < MATRIX_COLS; x++) {
        if ( (x > 0) && (x < 12) ) {
        setPinInputHigh(col_pins[x]);
        }
    }
}
