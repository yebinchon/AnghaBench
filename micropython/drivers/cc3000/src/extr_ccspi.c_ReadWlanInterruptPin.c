
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pin_mask; int gpio; } ;


 long HAL_GPIO_ReadPin (int ,int ) ;
 TYPE_1__* PIN_IRQ ;

long ReadWlanInterruptPin(void)
{
    return HAL_GPIO_ReadPin(PIN_IRQ->gpio, PIN_IRQ->pin_mask);
}
