
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2C1_SCL ;
 int I2C1_SCL_BANK ;
 int I2C1_SCL_PAL_MODE ;
 int I2C1_SDA ;
 int I2C1_SDA_BANK ;
 int I2C1_SDA_PAL_MODE ;
 int PAL_MODE_ALTERNATE (int ) ;
 int PAL_MODE_INPUT ;
 int PAL_MODE_STM32_ALTERNATE_OPENDRAIN ;
 int PAL_STM32_OTYPE_OPENDRAIN ;
 int chThdSleepMilliseconds (int) ;
 int palSetPadMode (int ,int ,int) ;

__attribute__((weak)) void i2c_init(void) {

    palSetPadMode(I2C1_SCL_BANK, I2C1_SCL, PAL_MODE_INPUT);
    palSetPadMode(I2C1_SDA_BANK, I2C1_SDA, PAL_MODE_INPUT);

    chThdSleepMilliseconds(10);




    palSetPadMode(I2C1_SCL_BANK, I2C1_SCL, PAL_MODE_ALTERNATE(I2C1_SCL_PAL_MODE) | PAL_STM32_OTYPE_OPENDRAIN);
    palSetPadMode(I2C1_SDA_BANK, I2C1_SDA, PAL_MODE_ALTERNATE(I2C1_SDA_PAL_MODE) | PAL_STM32_OTYPE_OPENDRAIN);

}
