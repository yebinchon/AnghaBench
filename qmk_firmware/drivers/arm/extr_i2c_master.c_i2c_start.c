
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int i2c_status_t ;


 int I2C_DRIVER ;
 int I2C_STATUS_SUCCESS ;
 int i2cStart (int *,int *) ;
 int i2c_address ;
 int i2cconfig ;

i2c_status_t i2c_start(uint8_t address) {
    i2c_address = address;
    i2cStart(&I2C_DRIVER, &i2cconfig);
    return I2C_STATUS_SUCCESS;
}
