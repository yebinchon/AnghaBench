
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _delay_ms (int) ;
 int i2c_init () ;
 int i2c_initialized ;

uint8_t init_mcp23017(void)
{
    i2c_initialized = 0;

    if (i2c_initialized == 0)
    {
        i2c_init();
        _delay_ms(1000);
    }

    return 0;
}
