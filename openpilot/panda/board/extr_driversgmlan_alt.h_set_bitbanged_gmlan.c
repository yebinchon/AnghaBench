
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int ODR; } ;


 TYPE_1__* GPIOB ;

void set_bitbanged_gmlan(int val) {
  if (val != 0) {
    GPIOB->ODR |= (1U << 13);
  } else {
    GPIOB->ODR &= ~(1U << 13);
  }
}
