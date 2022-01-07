
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; int D2CFGR; } ;


 int HAL_RCC_GetPCLK1Freq () ;
 int HAL_RCC_GetPCLK2Freq () ;
 TYPE_1__* RCC ;
 int RCC_CFGR_PPRE ;
 int RCC_CFGR_PPRE1 ;
 int RCC_CFGR_PPRE2 ;
 int RCC_D2CFGR_D2PPRE1 ;
 int RCC_D2CFGR_D2PPRE2 ;

uint32_t timer_get_source_freq(uint32_t tim_id) {
    uint32_t source, clk_div;
    if (tim_id == 1 || (8 <= tim_id && tim_id <= 11)) {
        source = HAL_RCC_GetPCLK2Freq();
        clk_div = RCC->CFGR & RCC_CFGR_PPRE2;

    } else {

        source = HAL_RCC_GetPCLK1Freq();





        clk_div = RCC->CFGR & RCC_CFGR_PPRE1;

    }
    if (clk_div != 0) {

        source *= 2;
    }
    return source;
}
