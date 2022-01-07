
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t w_ptr_tx; size_t r_ptr_tx; unsigned int tx_fifo_size; TYPE_1__* uart; int * elems_tx; } ;
typedef TYPE_2__ uart_ring ;
struct TYPE_4__ {int SR; int CR1; int DR; } ;


 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 int USART_CR1_TXEIE ;
 int USART_SR_TXE ;

void uart_tx_ring(uart_ring *q){
  ENTER_CRITICAL();

  if (q->w_ptr_tx != q->r_ptr_tx) {

    if ((q->uart->SR & USART_SR_TXE) != 0) {
      q->uart->DR = q->elems_tx[q->r_ptr_tx];
      q->r_ptr_tx = (q->r_ptr_tx + 1U) % q->tx_fifo_size;
    }


    if(q->r_ptr_tx != q->w_ptr_tx){
      q->uart->CR1 |= USART_CR1_TXEIE;
    } else {
      q->uart->CR1 &= ~USART_CR1_TXEIE;
    }
  }
  EXIT_CRITICAL();
}
