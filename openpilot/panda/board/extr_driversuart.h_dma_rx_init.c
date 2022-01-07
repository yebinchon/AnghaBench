
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_8__ {TYPE_1__* uart; int rx_fifo_size; scalar_t__ elems_rx; } ;
typedef TYPE_2__ uart_ring ;
struct TYPE_10__ {int CR; int NDTR; void* M0AR; void* PAR; int FCR; } ;
struct TYPE_9__ {int DR; } ;
struct TYPE_7__ {int CR1; int CR3; } ;


 TYPE_6__* DMA2_Stream5 ;
 int DMA2_Stream5_IRQn ;
 int DMA_SxCR_CHSEL_2 ;
 int DMA_SxCR_CIRC ;
 int DMA_SxCR_DMEIE ;
 int DMA_SxCR_EN ;
 int DMA_SxCR_HTIE ;
 int DMA_SxCR_MINC ;
 int DMA_SxCR_TCIE ;
 int DMA_SxCR_TEIE ;
 int DMA_SxFCR_DMDIS ;
 int NVIC_EnableIRQ (int ) ;
 TYPE_5__* USART1 ;
 int USART_CR1_IDLEIE ;
 int USART_CR3_DMAR ;
 int puts (char*) ;
 TYPE_2__ uart_ring_esp_gps ;

void dma_rx_init(uart_ring *q) {

  if(q == &uart_ring_esp_gps){



    DMA2_Stream5->FCR &= ~DMA_SxFCR_DMDIS;


    DMA2_Stream5->PAR = (uint32_t)&(USART1->DR);
    DMA2_Stream5->M0AR = (uint32_t)q->elems_rx;
    DMA2_Stream5->NDTR = q->rx_fifo_size;



    DMA2_Stream5->CR = DMA_SxCR_CHSEL_2 | DMA_SxCR_MINC | DMA_SxCR_CIRC | DMA_SxCR_HTIE | DMA_SxCR_TCIE | DMA_SxCR_TEIE | DMA_SxCR_DMEIE | DMA_SxCR_EN;


    q->uart->CR3 |= USART_CR3_DMAR;


    q->uart->CR1 |= USART_CR1_IDLEIE;


    NVIC_EnableIRQ(DMA2_Stream5_IRQn);
  } else {
    puts("Tried to initialize RX DMA for an unsupported UART\n");
  }
}
