
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int PR; } ;


 TYPE_1__* EXTI ;
 int puts (char*) ;
 int spi_buf ;
 int spi_rx_dma (int ,int) ;
 scalar_t__ spi_total_count ;

void EXTI4_IRQHandler(void) {
  volatile unsigned int pr = EXTI->PR & (1U << 4);




  if ((pr & (1U << 4)) != 0U) {
    spi_total_count = 0;
    spi_rx_dma(spi_buf, 0x14);
  }
  EXTI->PR = pr;
}
