
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* AFR; } ;
typedef TYPE_1__ GPIO_TypeDef ;


 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 int MODE_ALTERNATE ;
 int set_gpio_mode (TYPE_1__*,unsigned int,int ) ;

void set_gpio_alternate(GPIO_TypeDef *GPIO, unsigned int pin, unsigned int mode) {
  ENTER_CRITICAL();
  uint32_t tmp = GPIO->AFR[pin >> 3U];
  tmp &= ~(0xFU << ((pin & 7U) * 4U));
  tmp |= mode << ((pin & 7U) * 4U);
  GPIO->AFR[pin >> 3] = tmp;
  set_gpio_mode(GPIO, pin, MODE_ALTERNATE);
  EXIT_CRITICAL();
}
