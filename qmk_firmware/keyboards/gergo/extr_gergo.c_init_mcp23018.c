
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPPUA ;
 int I2C_ADDR_WRITE ;
 int I2C_TIMEOUT ;
 int IODIRA ;
 int _delay_ms (int) ;
 int i2c_init () ;
 int i2c_initialized ;
 int i2c_start (int ,int ) ;
 int i2c_stop () ;
 int i2c_write (int,int ) ;
 int mcp23018_status ;
 int print (char*) ;

uint8_t init_mcp23018(void) {
    print("starting init");
    mcp23018_status = 0x20;







    if (i2c_initialized == 0) {
        i2c_init();
        i2c_initialized = 1;
        _delay_ms(1000);
    }







    mcp23018_status = i2c_start(I2C_ADDR_WRITE, I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(IODIRA, I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b10000000, I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b11111111, I2C_TIMEOUT); if (mcp23018_status) goto out;
    i2c_stop();





    mcp23018_status = i2c_start(I2C_ADDR_WRITE, I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(GPPUA, I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b10000000, I2C_TIMEOUT); if (mcp23018_status) goto out;
    mcp23018_status = i2c_write(0b11111111, I2C_TIMEOUT); if (mcp23018_status) goto out;

out:
    i2c_stop();


    return mcp23018_status;
}
