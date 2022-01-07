
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_REG_WRITE (int ,int) ;
 int GPIO_SIGMA_DELTA ;
 int GPIO_SIGMA_DELTA_DISABLE ;
 int GPIO_SIGMA_DELTA_PRESCALE_SET (int) ;
 int GPIO_SIGMA_DELTA_SET (int ) ;
 int GPIO_SIGMA_DELTA_TARGET_SET (int) ;

void sigma_delta_stop( void )
{
    GPIO_REG_WRITE(GPIO_SIGMA_DELTA,
                   GPIO_SIGMA_DELTA_SET(GPIO_SIGMA_DELTA_DISABLE) |
                   GPIO_SIGMA_DELTA_TARGET_SET(0x00) |
                   GPIO_SIGMA_DELTA_PRESCALE_SET(0x00) );
}
