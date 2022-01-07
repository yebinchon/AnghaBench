
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pin_mask; int gpio; } ;


 int GPIO_PIN_RESET ;
 int GPIO_PIN_SET ;
 int HAL_GPIO_WritePin (int ,int ,int ) ;
 TYPE_1__* PIN_EN ;
 scalar_t__ WLAN_ENABLE ;

void WriteWlanPin(unsigned char val)
{
    HAL_GPIO_WritePin(PIN_EN->gpio, PIN_EN->pin_mask,
            (WLAN_ENABLE)? GPIO_PIN_SET:GPIO_PIN_RESET);
}
