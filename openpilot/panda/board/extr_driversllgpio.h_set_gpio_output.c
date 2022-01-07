
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int ODR; } ;
typedef TYPE_1__ GPIO_TypeDef ;


 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 int MODE_OUTPUT ;
 int set_gpio_mode (TYPE_1__*,unsigned int,int ) ;

void set_gpio_output(GPIO_TypeDef *GPIO, unsigned int pin, bool enabled) {
  ENTER_CRITICAL();
  if (enabled) {
    GPIO->ODR |= (1U << pin);
  } else {
    GPIO->ODR &= ~(1U << pin);
  }
  set_gpio_mode(GPIO, pin, MODE_OUTPUT);
  EXIT_CRITICAL();
}
