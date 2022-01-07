
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int HISR; int HIFCR; } ;
struct TYPE_3__ {int NDTR; int CR; } ;


 TYPE_2__* DMA2 ;
 TYPE_1__* DMA2_Stream5 ;
 int DMA_HIFCR_CDMEIF5 ;
 int DMA_HIFCR_CFEIF5 ;
 int DMA_HIFCR_CHTIF5 ;
 int DMA_HIFCR_CTCIF5 ;
 int DMA_HIFCR_CTEIF5 ;
 int DMA_HISR_DMEIF5 ;
 int DMA_HISR_FEIF5 ;
 int DMA_HISR_TEIF5 ;
 int DMA_SxCR_EN ;
 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 int dma_pointer_handler (int *,int ) ;
 int puts (char*) ;
 int uart_ring_esp_gps ;

void DMA2_Stream5_IRQHandler(void) {
  ENTER_CRITICAL();


  if((DMA2->HISR & DMA_HISR_TEIF5) || (DMA2->HISR & DMA_HISR_DMEIF5) || (DMA2->HISR & DMA_HISR_FEIF5)){





    DMA2->HIFCR = DMA_HIFCR_CTEIF5 | DMA_HIFCR_CDMEIF5 | DMA_HIFCR_CFEIF5;


    DMA2_Stream5->CR |= DMA_SxCR_EN;
  }


  dma_pointer_handler(&uart_ring_esp_gps, DMA2_Stream5->NDTR);
  DMA2->HIFCR = DMA_HIFCR_CTCIF5 | DMA_HIFCR_CHTIF5;

  EXIT_CRITICAL();
}
