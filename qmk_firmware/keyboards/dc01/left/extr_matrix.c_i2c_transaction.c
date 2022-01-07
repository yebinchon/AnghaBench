
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int i2c_status_t ;


 int I2C_READ ;
 int I2C_WRITE ;
 int MATRIX_COLS_SCANNED ;
 int MATRIX_ROWS ;
 int i2c_read_ack (int) ;
 int i2c_read_nack (int) ;
 int i2c_start (int,int) ;
 int i2c_stop () ;
 int i2c_write (int,int) ;
 int* matrix ;

i2c_status_t i2c_transaction(uint8_t address, uint32_t mask, uint8_t col_offset) {
    i2c_status_t err = i2c_start((address << 1) | I2C_WRITE, 10);
    i2c_write(0x01, 10);

    i2c_start((address << 1) | I2C_READ, 5);

    err = i2c_read_ack(10);
    if (err == 0x55) {

        for (uint8_t i = 0; i < MATRIX_ROWS-1 ; i++) {
            matrix[i] &= mask;
            err = i2c_read_ack(10);
                matrix[i] |= ((uint32_t)err << (MATRIX_COLS_SCANNED + col_offset));
            }

        matrix[MATRIX_ROWS - 1] &= mask;
        err = i2c_read_nack(10);
        matrix[MATRIX_ROWS - 1] |= ((uint32_t)err << (MATRIX_COLS_SCANNED + col_offset));

    } else {
        i2c_stop();
        return 1;
    }

    i2c_stop();
    return 0;
}
