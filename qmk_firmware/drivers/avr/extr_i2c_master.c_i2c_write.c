
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int i2c_status_t ;


 int I2C_STATUS_ERROR ;
 int I2C_STATUS_SUCCESS ;
 int I2C_STATUS_TIMEOUT ;
 scalar_t__ I2C_TIMEOUT_INFINITE ;
 int TWCR ;
 int TWDR ;
 int TWEN ;
 int TWINT ;
 int TW_MT_DATA_ACK ;
 int TW_STATUS ;
 scalar_t__ timer_read () ;

i2c_status_t i2c_write(uint8_t data, uint16_t timeout) {

    TWDR = data;

    TWCR = (1 << TWINT) | (1 << TWEN);

    uint16_t timeout_timer = timer_read();
    while (!(TWCR & (1 << TWINT))) {
        if ((timeout != I2C_TIMEOUT_INFINITE) && ((timer_read() - timeout_timer) >= timeout)) {
            return I2C_STATUS_TIMEOUT;
        }
    }

    if ((TW_STATUS & 0xF8) != TW_MT_DATA_ACK) {
        return I2C_STATUS_ERROR;
    }

    return I2C_STATUS_SUCCESS;
}
