
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ w_ptr_tx; scalar_t__ r_ptr_tx; } ;
typedef TYPE_1__ uart_ring ;


 int uart_tx_ring (TYPE_1__*) ;

void uart_flush_sync(uart_ring *q) {

  while (q->w_ptr_tx != q->r_ptr_tx) {
    uart_tx_ring(q);
  }
}
