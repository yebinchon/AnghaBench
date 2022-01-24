#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {int DATA; } ;
struct TYPE_10__ {TYPE_3__ bit; } ;
struct TYPE_7__ {scalar_t__ RXC; } ;
struct TYPE_8__ {TYPE_1__ bit; } ;
struct TYPE_11__ {TYPE_4__ DATA; TYPE_2__ INTFLAG; } ;
struct TYPE_12__ {TYPE_5__ USART; } ;

/* Variables and functions */
 TYPE_6__* USARTx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int*,int) ; 

int FUNC4(void) {
    for (;;) {
        if (USARTx->USART.INTFLAG.bit.RXC) {
            return USARTx->USART.DATA.bit.DATA;
        }
        if (FUNC2() && FUNC1()) {
            uint8_t buf[1];
            uint32_t count = FUNC3(buf, sizeof(buf));
            if (count) {
                return buf[0];
            }
        }
        FUNC0();
    }
}