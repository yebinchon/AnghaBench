
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ r_ptr_rx; scalar_t__ w_ptr_rx; scalar_t__ r_ptr_tx; scalar_t__ w_ptr_tx; } ;
typedef TYPE_1__ uart_ring ;


 int ENTER_CRITICAL () ;
 int EXIT_CRITICAL () ;

void clear_uart_buff(uart_ring *q) {
  ENTER_CRITICAL();
  q->w_ptr_tx = 0;
  q->r_ptr_tx = 0;
  q->w_ptr_rx = 0;
  q->r_ptr_rx = 0;
  EXIT_CRITICAL();
}
