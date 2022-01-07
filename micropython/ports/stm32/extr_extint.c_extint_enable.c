
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
typedef int mp_uint_t ;
struct TYPE_4__ {int IMR1; int IMR; int EMR1; int EMR; } ;
struct TYPE_3__ {int IMR1; int EMR1; } ;


 TYPE_2__* EXTI ;
 TYPE_1__* EXTI_D1 ;
 int EXTI_MODE_BB (scalar_t__,size_t) ;
 scalar_t__ EXTI_Mode_Interrupt ;
 size_t EXTI_NUM_VECTORS ;
 int disable_irq () ;
 int enable_irq (int ) ;
 scalar_t__* pyb_extint_mode ;

void extint_enable(uint line) {
    if (line >= EXTI_NUM_VECTORS) {
        return;
    }


    mp_uint_t irq_state = disable_irq();
    if (pyb_extint_mode[line] == EXTI_Mode_Interrupt) {





        EXTI->IMR |= (1 << line);

    } else {





        EXTI->EMR |= (1 << line);

    }
    enable_irq(irq_state);






}
