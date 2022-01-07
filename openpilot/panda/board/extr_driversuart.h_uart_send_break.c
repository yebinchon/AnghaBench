
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* uart; } ;
typedef TYPE_2__ uart_ring ;
struct TYPE_4__ {int CR1; } ;


 int USART_CR1_SBK ;

void uart_send_break(uart_ring *u) {
  while ((u->uart->CR1 & USART_CR1_SBK) != 0);
  u->uart->CR1 |= USART_CR1_SBK;
}
