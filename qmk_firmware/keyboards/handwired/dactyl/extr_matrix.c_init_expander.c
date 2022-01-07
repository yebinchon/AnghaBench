
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPPUA ;
 int I2C_ADDR_WRITE ;
 int IODIRA ;
 int MATRIX_COLS ;
 int MATRIX_ROWS ;
 scalar_t__* col_expanded ;
 int* expander_col_pins ;
 int expander_input_pin_mask ;
 int* expander_row_pins ;
 scalar_t__ expander_status ;
 int i2c_init () ;
 int i2c_initialized ;
 scalar_t__ i2c_start (int ) ;
 int i2c_stop () ;
 scalar_t__ i2c_write (int) ;
 int wait_us (int) ;

void init_expander(void) {
    if (! i2c_initialized) {
        i2c_init();
        wait_us(1000000);
    }

    if (! expander_input_pin_mask) {

        for (int col = 0; col < MATRIX_COLS; col++) {
            if (col_expanded[col]) {
                expander_input_pin_mask |= (1 << expander_col_pins[col]);
            }
        }





    }

    expander_status = i2c_start(I2C_ADDR_WRITE); if (expander_status) goto out;
    expander_status = i2c_write(IODIRA); if (expander_status) goto out;
        expander_status = i2c_write(expander_input_pin_mask); if (expander_status) goto out;
        expander_status = i2c_write(0); if (expander_status) goto out;
    i2c_stop();





    expander_status = i2c_start(I2C_ADDR_WRITE); if (expander_status) goto out;
    expander_status = i2c_write(GPPUA); if (expander_status) goto out;


        expander_status = i2c_write(expander_input_pin_mask); if (expander_status) goto out;
        expander_status = i2c_write(0); if (expander_status) goto out;
out:
    i2c_stop();
}
