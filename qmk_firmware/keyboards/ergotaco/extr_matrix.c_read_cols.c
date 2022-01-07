
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int matrix_row_t ;


 int ERGODOX_EZ_I2C_TIMEOUT ;
 int GPIOB ;
 int I2C_ADDR_READ ;
 int I2C_ADDR_WRITE ;
 scalar_t__ I2C_STATUS_SUCCESS ;
 int PINF ;
 int ROW1 ;
 scalar_t__ i2c_read_nack (int ) ;
 scalar_t__ i2c_start (int ,int ) ;
 int i2c_stop () ;
 scalar_t__ i2c_write (int ,int ) ;
 scalar_t__ mcp23018_status ;
 int xprintf (char*,int) ;

__attribute__((used)) static matrix_row_t read_cols(uint8_t row)
{
    if (row < 6) {
        if (mcp23018_status) {
            return 0;
        } else {
            uint8_t data = 0;
            mcp23018_status = i2c_start(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
            mcp23018_status = i2c_write(GPIOB, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
            mcp23018_status = i2c_start(I2C_ADDR_READ, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
            mcp23018_status = i2c_read_nack(ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status < 0) goto out;
            data = (~((uint8_t)mcp23018_status) >> 2) & 0x01 ;
            mcp23018_status = I2C_STATUS_SUCCESS;
        out:
            i2c_stop();




            return data;
        }
    } else {

        return ~((((PINF & ROW1) >> 5)) & 0x1);
    }
}
