
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int mp_uint_t ;
struct TYPE_4__ {int IMR1; int EMR1; int IMR; int EMR; } ;
struct TYPE_3__ {int IMR1; int EMR1; } ;


 TYPE_2__* EXTI ;
 TYPE_1__* EXTI_D1 ;
 scalar_t__ EXTI_MODE_BB (int ,int) ;
 int EXTI_Mode_Event ;
 int EXTI_Mode_Interrupt ;
 int EXTI_NUM_VECTORS ;
 int disable_irq () ;
 int enable_irq (int ) ;

void extint_disable(uint line) {
    if (line >= EXTI_NUM_VECTORS) {
        return;
    }



    mp_uint_t irq_state = disable_irq();







    EXTI->IMR &= ~(1 << line);
    EXTI->EMR &= ~(1 << line);

    enable_irq(irq_state);







}
