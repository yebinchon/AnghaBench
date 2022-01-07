
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mp_uint_t ;
struct TYPE_2__ {int VAL; int CTRL; int LOAD; } ;


 int HAL_GetTick () ;
 TYPE_1__* SysTick ;
 int SysTick_CTRL_COUNTFLAG_Msk ;
 int disable_irq () ;
 int enable_irq (int) ;

mp_uint_t mp_hal_ticks_us(void) {
    mp_uint_t irq_state = disable_irq();
    uint32_t counter = SysTick->VAL;
    uint32_t milliseconds = HAL_GetTick();
    uint32_t status = SysTick->CTRL;
    enable_irq(irq_state);






    if ((status & SysTick_CTRL_COUNTFLAG_Msk) && counter > 50) {



        milliseconds++;
    }
    uint32_t load = SysTick->LOAD;
    counter = load - counter;





    return milliseconds * 1000 + (counter * 1000) / (load + 1);
}
