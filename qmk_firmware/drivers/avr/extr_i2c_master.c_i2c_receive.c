
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ i2c_status_t ;


 int I2C_READ ;
 scalar_t__ I2C_STATUS_SUCCESS ;
 scalar_t__ i2c_read_ack (int) ;
 scalar_t__ i2c_read_nack (int) ;
 scalar_t__ i2c_start (int,int) ;
 int i2c_stop () ;

i2c_status_t i2c_receive(uint8_t address, uint8_t* data, uint16_t length, uint16_t timeout) {
    i2c_status_t status = i2c_start(address | I2C_READ, timeout);

    for (uint16_t i = 0; i < (length - 1) && status >= 0; i++) {
        status = i2c_read_ack(timeout);
        if (status >= 0) {
            data[i] = status;
        }
    }

    if (status >= 0) {
        status = i2c_read_nack(timeout);
        if (status >= 0) {
            data[(length - 1)] = status;
        }
    }

    i2c_stop();

    return (status < 0) ? status : I2C_STATUS_SUCCESS;
}
