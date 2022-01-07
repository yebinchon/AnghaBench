
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOB ;
 int PAL_MODE_ALTERNATE (int) ;
 int PAL_MODE_INPUT ;
 int PAL_STM32_OTYPE_OPENDRAIN ;
 int chThdSleepMilliseconds (int) ;
 int palSetPadMode (int ,int,int) ;

__attribute__ ((weak))
void i2c_init(void)
{

  palSetPadMode(GPIOB, 6, PAL_MODE_INPUT);
  palSetPadMode(GPIOB, 7, PAL_MODE_INPUT);

  chThdSleepMilliseconds(10);

  palSetPadMode(GPIOB, 6, PAL_MODE_ALTERNATE(1) | PAL_STM32_OTYPE_OPENDRAIN);
  palSetPadMode(GPIOB, 7, PAL_MODE_ALTERNATE(1) | PAL_STM32_OTYPE_OPENDRAIN);


}
