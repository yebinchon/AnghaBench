
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_3__ {unsigned int rx_fifo_size; unsigned int r_ptr_rx; unsigned int w_ptr_rx; } ;
typedef TYPE_1__ uart_ring ;


 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;
 unsigned int prev_w_index ;

void dma_pointer_handler(uart_ring *q, uint32_t dma_ndtr) {
  ENTER_CRITICAL();
  uint32_t w_index = (q->rx_fifo_size - dma_ndtr);


  if (w_index != prev_w_index){

    if (
      ((prev_w_index < q->r_ptr_rx) && (q->r_ptr_rx <= w_index)) ||
      ((w_index < prev_w_index) && ((q->r_ptr_rx <= w_index) || (prev_w_index < q->r_ptr_rx)))
    ){

      q->r_ptr_rx = (w_index + 1U) % q->rx_fifo_size;
    }


    q->w_ptr_rx = w_index;
  }

  prev_w_index = w_index;
  EXIT_CRITICAL();
}
