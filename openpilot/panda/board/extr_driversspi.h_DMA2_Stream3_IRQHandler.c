
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int LIFCR; } ;


 TYPE_1__* DMA2 ;
 int DMA_LIFCR_CTCIF3 ;
 int GPIOB ;
 int MODE_INPUT ;
 int PULL_UP ;
 int puts (char*) ;
 int set_gpio_mode (int ,int ,int ) ;
 int set_gpio_pullup (int ,int ,int ) ;

void DMA2_Stream3_IRQHandler(void) {





  set_gpio_mode(GPIOB, 0, MODE_INPUT);
  set_gpio_pullup(GPIOB, 0, PULL_UP);


  DMA2->LIFCR = DMA_LIFCR_CTCIF3;
}
