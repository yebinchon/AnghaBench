
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mp_uint_t ;


 int HAL_RCC_GetSysClockFreq () ;
 scalar_t__ IRQ_STATE_ENABLED ;
 int mp_hal_ticks_us () ;
 scalar_t__ query_irq () ;

void mp_hal_delay_us(mp_uint_t usec) {
    if (query_irq() == IRQ_STATE_ENABLED) {

        uint32_t start = mp_hal_ticks_us();
        while (mp_hal_ticks_us() - start < usec) {
        }
    } else {


        const uint32_t ucount = HAL_RCC_GetSysClockFreq() / 2000000 * usec / 2;
        for (uint32_t count = 0; ++count <= ucount;) {
        }
    }
}
