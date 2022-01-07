
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ i2c_status_t ;
typedef int conf ;


 scalar_t__ CMD_OUTPUT_0 ;
 scalar_t__ CMD_OUTPUT_1 ;
 scalar_t__ I2C_STATUS_SUCCESS ;
 scalar_t__ SLAVE_TO_ADDR (scalar_t__) ;
 int TIMEOUT ;
 scalar_t__ i2c_writeReg (scalar_t__,scalar_t__,scalar_t__*,int,int ) ;
 int print (char*) ;

void pca9555_set_output(uint8_t slave_addr, uint8_t port, uint8_t conf) {
    uint8_t addr = SLAVE_TO_ADDR(slave_addr);
    uint8_t cmd = port ? CMD_OUTPUT_1 : CMD_OUTPUT_0;

    i2c_status_t ret = i2c_writeReg(addr, cmd, &conf, sizeof(conf), TIMEOUT);
    if (ret != I2C_STATUS_SUCCESS) {
        print("pca9555_set_output::FAILED\n");
    }
}
