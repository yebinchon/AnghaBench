
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int IMR; unsigned int FTSR; } ;
struct TYPE_5__ {int CR2; int CR1; } ;
struct TYPE_4__ {int * EXTICR; } ;


 int DMA2_Stream2_IRQn ;
 int DMA2_Stream3_IRQn ;
 TYPE_3__* EXTI ;
 int EXTI4_IRQn ;
 int GPIOB ;
 int MODE_INPUT ;
 int NVIC_EnableIRQ (int ) ;
 int PULL_UP ;
 TYPE_2__* SPI1 ;
 int SPI_CR1_SPE ;
 int SPI_CR2_RXNEIE ;
 TYPE_1__* SYSCFG ;
 int SYSCFG_EXTICR2_EXTI4_PA ;
 int set_gpio_mode (int ,int ,int ) ;
 int set_gpio_pullup (int ,int ,int ) ;

void spi_init(void) {

  SPI1->CR1 = SPI_CR1_SPE;



  SPI1->CR2 = SPI_CR2_RXNEIE;

  NVIC_EnableIRQ(DMA2_Stream2_IRQn);
  NVIC_EnableIRQ(DMA2_Stream3_IRQn);



  set_gpio_mode(GPIOB, 0, MODE_INPUT);
  set_gpio_pullup(GPIOB, 0, PULL_UP);


  SYSCFG->EXTICR[2] = SYSCFG_EXTICR2_EXTI4_PA;
  EXTI->IMR |= (1U << 4);
  EXTI->FTSR |= (1U << 4);
  NVIC_EnableIRQ(EXTI4_IRQn);
}
