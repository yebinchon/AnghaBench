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
typedef  scalar_t__ uint32_t ;
typedef  size_t mp_uint_t ;
struct TYPE_7__ {int /*<<< orphan*/  DATA; } ;
struct TYPE_8__ {TYPE_1__ bit; } ;
struct TYPE_9__ {int /*<<< orphan*/  DRE; } ;
struct TYPE_11__ {TYPE_3__ bit; } ;
struct TYPE_10__ {TYPE_2__ DATA; TYPE_5__ INTFLAG; } ;
struct TYPE_12__ {TYPE_4__ USART; } ;

/* Variables and functions */
 TYPE_6__* USARTx ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(const char *str, mp_uint_t len) {
    if (FUNC1()) {
        for (size_t i = 0; i < len;) {
            uint32_t n = len - i;
            uint32_t n2 = FUNC2(str + i, n);
            if (n2 < n) {
                while (!FUNC3()) {
                    FUNC0();
                }
            }
            i += n2;
        }
        while (!FUNC3()) {
            FUNC0();
        }
    }
    while (len--) {
        while (!(USARTx->USART.INTFLAG.bit.DRE)) { }
        USARTx->USART.DATA.bit.DATA = *str++;
    }
}