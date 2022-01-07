
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* BRR; } ;
typedef TYPE_1__ USART_TypeDef ;


 TYPE_1__* USART1 ;
 void* __USART_BRR (unsigned int,unsigned int) ;

void uart_set_baud(USART_TypeDef *u, unsigned int baud) {
  if (u == USART1) {

    u->BRR = __USART_BRR(48000000U, baud);
  } else {
    u->BRR = __USART_BRR(24000000U, baud);
  }
}
