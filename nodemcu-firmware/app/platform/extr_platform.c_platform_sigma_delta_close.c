
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GPIO_AS_PIN_SOURCE ;
 int GPIO_ID_PIN (int ) ;
 int GPIO_PIN_ADDR (int ) ;
 int GPIO_PIN_SOURCE_MASK ;
 int GPIO_PIN_SOURCE_SET (int ) ;
 int GPIO_REG_READ (int ) ;
 int GPIO_REG_WRITE (int ,int) ;
 int NUM_GPIO ;
 int PLATFORM_GPIO_INPUT ;
 int PLATFORM_GPIO_PULLUP ;
 int * pin_num ;
 int platform_gpio_mode (int,int ,int ) ;
 int sigma_delta_stop () ;

uint8_t platform_sigma_delta_close( uint8_t pin )
{
  if (pin < 1 || pin > NUM_GPIO)
    return 0;

  sigma_delta_stop();


  platform_gpio_mode( pin, PLATFORM_GPIO_INPUT, PLATFORM_GPIO_PULLUP );


  GPIO_REG_WRITE(GPIO_PIN_ADDR(GPIO_ID_PIN(pin_num[pin])),
                 (GPIO_REG_READ(GPIO_PIN_ADDR(GPIO_ID_PIN(pin_num[pin]))) &(~GPIO_PIN_SOURCE_MASK)) |
                 GPIO_PIN_SOURCE_SET( GPIO_AS_PIN_SOURCE ));

  return 1;
}
