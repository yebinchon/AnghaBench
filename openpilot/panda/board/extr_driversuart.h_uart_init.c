
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dma_rx; TYPE_2__* uart; } ;
typedef TYPE_1__ uart_ring ;
struct TYPE_10__ {int CR1; } ;


 int NVIC_EnableIRQ (int ) ;
 TYPE_2__* UART5 ;
 int UART5_IRQn ;
 TYPE_2__* USART1 ;
 int USART1_IRQn ;
 TYPE_2__* USART2 ;
 int USART2_IRQn ;
 TYPE_2__* USART3 ;
 int USART3_IRQn ;
 int USART_CR1_RE ;
 int USART_CR1_TE ;
 int USART_CR1_UE ;
 int dma_rx_init (TYPE_1__*) ;
 int uart_set_baud (TYPE_2__*,int) ;

void uart_init(uart_ring *q, int baud) {

  uart_set_baud(q->uart, baud);
  q->uart->CR1 = USART_CR1_UE | USART_CR1_TE | USART_CR1_RE;


  if(q->uart == USART1){
    NVIC_EnableIRQ(USART1_IRQn);
  } else if (q->uart == USART2){
    NVIC_EnableIRQ(USART2_IRQn);
  } else if (q->uart == USART3){
    NVIC_EnableIRQ(USART3_IRQn);
  } else if (q->uart == UART5){
    NVIC_EnableIRQ(UART5_IRQn);
  } else {

  }


  if(q->dma_rx){
    dma_rx_init(q);
  }
}
