
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ERGODOX_EZ_I2C_TIMEOUT ;
 int GPPUA ;
 int I2C_ADDR_WRITE ;
 int IODIRA ;
 int _delay_ms (int) ;
 int ergodox_left_leds_update () ;
 int i2c_init () ;
 int i2c_initialized ;
 int i2c_start (int ,int ) ;
 int i2c_stop () ;
 int i2c_write (int,int ) ;
 int mcp23018_status ;

uint8_t init_mcp23018(void) {
    mcp23018_status = 0x20;







    if (i2c_initialized == 0) {
        i2c_init();
        i2c_initialized = 1;
        _delay_ms(1000);
    }







    mcp23018_status = i2c_start(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(IODIRA, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b00000000, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b00111111, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
    i2c_stop();





    mcp23018_status = i2c_start(I2C_ADDR_WRITE, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(GPPUA, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b00000000, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b00111111, ERGODOX_EZ_I2C_TIMEOUT); if (mcp23018_status) goto out;

out:
    i2c_stop();







    return mcp23018_status;
}
