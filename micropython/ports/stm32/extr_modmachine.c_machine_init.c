
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CSR; int CSR1; int CPUCR; int SR1; int SCR; int CR1; int CR; } ;
struct TYPE_3__ {int RCC_SR; } ;


 TYPE_2__* PWR ;
 int PWR_CPUCR_CSSF ;
 int PWR_CPUCR_SBF ;
 int PWR_CPUCR_STOPF ;
 int PWR_CR1_CSBF ;
 int PWR_CR_CSBF ;
 int PWR_CSR1_SBF ;
 int PWR_CSR_SBF ;
 int PWR_SCR_CSBF ;
 int PWR_SR1_SBF ;
 int PYB_RESET_DEEPSLEEP ;
 int PYB_RESET_HARD ;
 int PYB_RESET_POWER_ON ;
 int PYB_RESET_SOFT ;
 int PYB_RESET_WDT ;
 TYPE_1__* RCC ;
 int RCC_SR_BORRSTF ;
 int RCC_SR_IWDGRSTF ;
 int RCC_SR_PINRSTF ;
 int RCC_SR_PORRSTF ;
 int RCC_SR_RMVF ;
 int RCC_SR_WWDGRSTF ;
 int reset_cause ;

void machine_init(void) {
    {

        uint32_t state = RCC->RCC_SR;
        if (state & RCC_SR_IWDGRSTF || state & RCC_SR_WWDGRSTF) {
            reset_cause = PYB_RESET_WDT;
        } else if (state & RCC_SR_PORRSTF

            || state & RCC_SR_BORRSTF

            ) {
            reset_cause = PYB_RESET_POWER_ON;
        } else if (state & RCC_SR_PINRSTF) {
            reset_cause = PYB_RESET_HARD;
        } else {

            reset_cause = PYB_RESET_SOFT;
        }
    }

    RCC->RCC_SR |= RCC_SR_RMVF;
}
