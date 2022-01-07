
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int IDR; } ;
typedef TYPE_1__ GPIO_TypeDef ;



int get_gpio_input(GPIO_TypeDef *GPIO, unsigned int pin) {
  return (GPIO->IDR & (1U << pin)) == (1U << pin);
}
