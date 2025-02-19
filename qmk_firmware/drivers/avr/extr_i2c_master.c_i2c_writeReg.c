
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint16_t ;
typedef scalar_t__ i2c_status_t ;


 scalar_t__ i2c_start (int,size_t) ;
 int i2c_stop () ;
 scalar_t__ i2c_write (int const,size_t) ;

i2c_status_t i2c_writeReg(uint8_t devaddr, uint8_t regaddr, const uint8_t* data, uint16_t length, uint16_t timeout) {
    i2c_status_t status = i2c_start(devaddr | 0x00, timeout);
    if (status >= 0) {
        status = i2c_write(regaddr, timeout);

        for (uint16_t i = 0; i < length && status >= 0; i++) {
            status = i2c_write(data[i], timeout);
        }
    }

    i2c_stop();

    return status;
}
