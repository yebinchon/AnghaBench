
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SysTick_Config (int) ;
 int SystemCoreClock ;
 scalar_t__ timer_count ;

void timer_init(void) {
    timer_count = 0;
    SysTick_Config(SystemCoreClock / 1000);
}
