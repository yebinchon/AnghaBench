
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2C_ACK ;
 int I2C_NACK ;
 scalar_t__ I2C_READ ;
 scalar_t__ I2C_WRITE ;
 int ROWS_PER_HAND ;
 scalar_t__ SLAVE_I2C_ADDRESS ;
 int i2c_master_read (int ) ;
 int i2c_master_start (scalar_t__) ;
 int i2c_master_stop () ;
 int i2c_master_write (int) ;
 int i2c_reset_state () ;
 scalar_t__ isLeftHand ;
 int * matrix ;

int i2c_transaction(void) {
    int slaveOffset = (isLeftHand) ? (ROWS_PER_HAND) : 0;

    int err = i2c_master_start(SLAVE_I2C_ADDRESS + I2C_WRITE);
    if (err) goto i2c_error;


    err = i2c_master_write(0x00);
    if (err) goto i2c_error;


    err = i2c_master_start(SLAVE_I2C_ADDRESS + I2C_READ);
    if (err) goto i2c_error;

    if (!err) {
        int i;
        for (i = 0; i < ROWS_PER_HAND-1; ++i) {
            matrix[slaveOffset+i] = i2c_master_read(I2C_ACK);
        }
        matrix[slaveOffset+i] = i2c_master_read(I2C_NACK);
        i2c_master_stop();
    } else {
i2c_error:
        i2c_reset_state();
        return err;
    }

    return 0;
}
