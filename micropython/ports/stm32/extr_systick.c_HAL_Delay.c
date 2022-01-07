
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ IRQ_STATE_ENABLED ;
 int __WFI () ;
 int mp_hal_delay_ms (scalar_t__) ;
 scalar_t__ query_irq () ;
 scalar_t__ uwTick ;

void HAL_Delay(uint32_t Delay) {
    if (query_irq() == IRQ_STATE_ENABLED) {

        uint32_t start = uwTick;

        while (uwTick - start < Delay) {

            __WFI();
        }
    } else {

        mp_hal_delay_ms(Delay);
    }
}
