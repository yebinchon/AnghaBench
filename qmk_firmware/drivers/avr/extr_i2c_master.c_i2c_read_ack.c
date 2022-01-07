
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int int16_t ;


 int I2C_STATUS_TIMEOUT ;
 scalar_t__ I2C_TIMEOUT_INFINITE ;
 int TWCR ;
 int TWDR ;
 int TWEA ;
 int TWEN ;
 int TWINT ;
 scalar_t__ timer_read () ;

int16_t i2c_read_ack(uint16_t timeout) {

    TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWEA);

    uint16_t timeout_timer = timer_read();
    while (!(TWCR & (1 << TWINT))) {
        if ((timeout != I2C_TIMEOUT_INFINITE) && ((timer_read() - timeout_timer) >= timeout)) {
            return I2C_STATUS_TIMEOUT;
        }
    }


    return TWDR;
}
