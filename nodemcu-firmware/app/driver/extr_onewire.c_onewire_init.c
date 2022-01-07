
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PLATFORM_GPIO_INPUT ;
 int PLATFORM_GPIO_PULLUP ;
 int onewire_reset_search (int ) ;
 int platform_gpio_mode (int ,int ,int ) ;

void onewire_init(uint8_t pin)
{

  platform_gpio_mode(pin, PLATFORM_GPIO_INPUT, PLATFORM_GPIO_PULLUP);



}
