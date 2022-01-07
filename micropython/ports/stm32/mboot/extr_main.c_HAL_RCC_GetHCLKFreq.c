
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SystemCoreClock ;

uint32_t HAL_RCC_GetHCLKFreq(void) {
    return SystemCoreClock;
}
