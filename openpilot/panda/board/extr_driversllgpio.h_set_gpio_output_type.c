
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int OTYPER; } ;
typedef TYPE_1__ GPIO_TypeDef ;


 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 unsigned int OUTPUT_TYPE_OPEN_DRAIN ;

void set_gpio_output_type(GPIO_TypeDef *GPIO, unsigned int pin, unsigned int output_type){
  ENTER_CRITICAL();
  if(output_type == OUTPUT_TYPE_OPEN_DRAIN) {
    GPIO->OTYPER |= (1U << pin);
  } else {
    GPIO->OTYPER &= ~(1U << pin);
  }
  EXIT_CRITICAL();
}
