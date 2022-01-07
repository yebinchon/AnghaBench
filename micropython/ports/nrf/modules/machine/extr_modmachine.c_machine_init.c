
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int RESETREAS; } ;


 TYPE_1__* NRF_POWER ;
 int POWER_RESETREAS_DIF_Msk ;
 int POWER_RESETREAS_DOG_Msk ;
 int POWER_RESETREAS_LOCKUP_Msk ;
 int POWER_RESETREAS_LPCOMP_Msk ;
 int POWER_RESETREAS_NFC_Msk ;
 int POWER_RESETREAS_OFF_Msk ;
 int POWER_RESETREAS_RESETPIN_Msk ;
 int POWER_RESETREAS_SREQ_Msk ;
 int PYB_RESET_DIF ;
 int PYB_RESET_HARD ;
 int PYB_RESET_LOCKUP ;
 int PYB_RESET_LPCOMP ;
 int PYB_RESET_NFC ;
 int PYB_RESET_POWER_ON ;
 int PYB_RESET_SOFT ;
 int PYB_RESET_WDT ;
 int reset_cause ;

void machine_init(void) {
    uint32_t state = NRF_POWER->RESETREAS;
    if (state & POWER_RESETREAS_RESETPIN_Msk) {
        reset_cause = PYB_RESET_HARD;
    } else if (state & POWER_RESETREAS_DOG_Msk) {
        reset_cause = PYB_RESET_WDT;
    } else if (state & POWER_RESETREAS_SREQ_Msk) {
        reset_cause = PYB_RESET_SOFT;
    } else if (state & POWER_RESETREAS_LOCKUP_Msk) {
        reset_cause = PYB_RESET_LOCKUP;
    } else if (state & POWER_RESETREAS_OFF_Msk) {
        reset_cause = PYB_RESET_POWER_ON;

    } else if (state & POWER_RESETREAS_LPCOMP_Msk) {
        reset_cause = PYB_RESET_LPCOMP;

    } else if (state & POWER_RESETREAS_DIF_Msk) {
        reset_cause = PYB_RESET_DIF;




    }


    NRF_POWER->RESETREAS = (1 << reset_cause);
}
