
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORT_EXPANDER_ADDRESS ;
 int i2c_writeReg (int,int,int*,int,int) ;
 int matrix_init_user () ;
 int send_data ;

void matrix_init_kb(void) {


    send_data = 0x10;
    i2c_writeReg((PORT_EXPANDER_ADDRESS << 1), 0x09, &send_data, 1, 20);

    matrix_init_user();
}
