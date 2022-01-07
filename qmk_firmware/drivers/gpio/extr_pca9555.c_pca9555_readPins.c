
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ i2c_status_t ;
typedef int data ;


 scalar_t__ CMD_INPUT_0 ;
 scalar_t__ CMD_INPUT_1 ;
 scalar_t__ I2C_STATUS_SUCCESS ;
 scalar_t__ SLAVE_TO_ADDR (scalar_t__) ;
 int TIMEOUT ;
 scalar_t__ i2c_readReg (scalar_t__,scalar_t__,scalar_t__*,int,int ) ;
 int print (char*) ;

uint8_t pca9555_readPins(uint8_t slave_addr, uint8_t port) {
    uint8_t addr = SLAVE_TO_ADDR(slave_addr);
    uint8_t cmd = port ? CMD_INPUT_1 : CMD_INPUT_0;

    uint8_t data = 0;
    i2c_status_t ret = i2c_readReg(addr, cmd, &data, sizeof(data), TIMEOUT);
    if (ret != I2C_STATUS_SUCCESS) {
        print("pca9555_readPins::FAILED\n");
    }
    return data;
}
