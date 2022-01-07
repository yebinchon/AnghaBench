
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_4__ {int CR; int NDTR; void* PAR; void* M0AR; } ;
struct TYPE_3__ {int CR2; int DR; } ;


 TYPE_2__* DMA2_Stream3 ;
 int DMA_SxCR_CHSEL_0 ;
 int DMA_SxCR_CHSEL_1 ;
 int DMA_SxCR_DIR_0 ;
 int DMA_SxCR_EN ;
 int DMA_SxCR_MINC ;
 int DMA_SxCR_TCIE ;
 int GPIOB ;
 TYPE_1__* SPI1 ;
 int SPI_CR2_TXDMAEN ;
 int delay (int ) ;
 int set_gpio_output (int ,int ,int ) ;

void spi_tx_dma(void *addr, int len) {

  SPI1->CR2 &= ~SPI_CR2_TXDMAEN;
  DMA2_Stream3->CR &= ~DMA_SxCR_EN;


  DMA2_Stream3->M0AR = (uint32_t)addr;
  DMA2_Stream3->NDTR = len;
  DMA2_Stream3->PAR = (uint32_t)&(SPI1->DR);


  DMA2_Stream3->CR = DMA_SxCR_CHSEL_1 | DMA_SxCR_CHSEL_0 | DMA_SxCR_MINC | DMA_SxCR_DIR_0 | DMA_SxCR_EN;
  delay(0);
  DMA2_Stream3->CR |= DMA_SxCR_TCIE;

  SPI1->CR2 |= SPI_CR2_TXDMAEN;



  set_gpio_output(GPIOB, 0, 0);
}
