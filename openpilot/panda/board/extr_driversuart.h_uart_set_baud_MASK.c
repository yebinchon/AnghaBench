#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* BRR; } ;
typedef  TYPE_1__ USART_TypeDef ;

/* Variables and functions */
 TYPE_1__* USART1 ; 
 void* FUNC0 (unsigned int,unsigned int) ; 

void FUNC1(USART_TypeDef *u, unsigned int baud) {
  if (u == USART1) {
    // USART1 is on APB2
    u->BRR = FUNC0(48000000U, baud);
  } else {
    u->BRR = FUNC0(24000000U, baud);
  }
}