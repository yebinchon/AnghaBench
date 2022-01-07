
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int HOTDOX_I2C_TIMEOUT ;
 int I2C_ADDR_WRITE ;
 int clear_keyboard () ;
 int i2c_initialized ;
 scalar_t__ i2c_start (int ,int ) ;
 int i2c_stop () ;
 int left_config () ;
 int print (char*) ;

void left_scan(void)
{
    uint8_t ret = i2c_start(I2C_ADDR_WRITE, HOTDOX_I2C_TIMEOUT);

    if (ret == 0)
    {
        i2c_stop();

        if (!i2c_initialized)
        {
            i2c_initialized = 1;
            left_config();
            clear_keyboard();
            print("mcp23017 attached!!!\n");
        }
    }
    else
    {
        if (i2c_initialized)
        {
            i2c_initialized = 0;
            clear_keyboard();
            print("mcp23017 deattached!!!\n");
        }
    }

    return;
}
