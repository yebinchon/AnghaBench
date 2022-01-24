#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
typedef  int /*<<< orphan*/  mp_uint_t ;
struct TYPE_4__ {int IMR1; int IMR; int EMR1; int EMR; } ;
struct TYPE_3__ {int IMR1; int EMR1; } ;

/* Variables and functions */
 TYPE_2__* EXTI ; 
 TYPE_1__* EXTI_D1 ; 
 int FUNC0 (scalar_t__,size_t) ; 
 scalar_t__ EXTI_Mode_Interrupt ; 
 size_t EXTI_NUM_VECTORS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__* pyb_extint_mode ; 

void FUNC3(uint line) {
    if (line >= EXTI_NUM_VECTORS) {
        return;
    }
    #if !defined(EXTI_MODE_BB)
    // This MCU doesn't have bitband support.
    mp_uint_t irq_state = FUNC1();
    if (pyb_extint_mode[line] == EXTI_Mode_Interrupt) {
        #if defined(STM32H7)
        EXTI_D1->IMR1 |= (1 << line);
        #elif defined(STM32WB)
        EXTI->IMR1 |= (1 << line);
        #else
        EXTI->IMR |= (1 << line);
        #endif
    } else {
        #if defined(STM32H7)
        EXTI_D1->EMR1 |= (1 << line);
        #elif defined(STM32WB)
        EXTI->EMR1 |= (1 << line);
        #else
        EXTI->EMR |= (1 << line);
        #endif
    }
    FUNC2(irq_state);
    #else
    // Since manipulating IMR/EMR is a read-modify-write, and we want this to
    // be atomic, we use the bit-band area to just affect the bit we're
    // interested in.
    EXTI_MODE_BB(pyb_extint_mode[line], line) = 1;
    #endif
}