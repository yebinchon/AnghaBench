
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;



__attribute__((used)) static void systick_sleep(unsigned long ms) {
    extern void HAL_Delay(volatile uint32_t Delay);
    HAL_Delay(ms);
}
