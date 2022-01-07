
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mp_uint_t ;


 int SysTickPeriodGet () ;
 int SysTickValueGet () ;
 int disable_irq () ;
 int enable_irq (int) ;
 int mp_hal_ticks_ms () ;

mp_uint_t mp_hal_ticks_us(void) {
    mp_uint_t irq_state = disable_irq();
    uint32_t counter = SysTickValueGet();
    uint32_t milliseconds = mp_hal_ticks_ms();
    enable_irq(irq_state);

    uint32_t load = SysTickPeriodGet();
    counter = load - counter;
    return (milliseconds * 1000) + ((counter * 1000) / load);
}
