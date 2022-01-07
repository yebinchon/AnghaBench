
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ w_ptr_tx; scalar_t__ r_ptr_tx; } ;
typedef TYPE_1__ uart_ring ;


 int __WFI () ;

void uart_flush(uart_ring *q) {
  while (q->w_ptr_tx != q->r_ptr_tx) {
    __WFI();
  }
}
