
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint16_t ;
struct TYPE_6__ {int dma_rx; unsigned int w_ptr_rx; unsigned int rx_fifo_size; unsigned int r_ptr_rx; int (* callback ) (TYPE_2__*) ;int * elems_rx; TYPE_1__* uart; } ;
typedef TYPE_2__ uart_ring ;
struct TYPE_5__ {int DR; } ;


 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 int stub1 (TYPE_2__*) ;

void uart_rx_ring(uart_ring *q){

  if (q->dma_rx == 0) {
    ENTER_CRITICAL();


    uint8_t c = q->uart->DR;

    uint16_t next_w_ptr = (q->w_ptr_rx + 1U) % q->rx_fifo_size;

    if (next_w_ptr != q->r_ptr_rx) {
      q->elems_rx[q->w_ptr_rx] = c;
      q->w_ptr_rx = next_w_ptr;
      if (q->callback != ((void*)0)) {
        q->callback(q);
      }
    }

    EXIT_CRITICAL();
  }
}
