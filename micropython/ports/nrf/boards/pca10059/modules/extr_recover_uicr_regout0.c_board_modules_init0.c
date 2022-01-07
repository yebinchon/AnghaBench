
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ READY; int CONFIG; } ;
struct TYPE_3__ {int REGOUT0; } ;


 TYPE_2__* NRF_NVMC ;
 TYPE_1__* NRF_UICR ;
 int NVIC_SystemReset () ;
 int NVMC_CONFIG_WEN_Ren ;
 int NVMC_CONFIG_WEN_Wen ;
 scalar_t__ NVMC_READY_READY_Ready ;
 int UICR_REGOUT0_VOUT_3V3 ;
 int UICR_REGOUT0_VOUT_Msk ;
 int UICR_REGOUT0_VOUT_Pos ;
 scalar_t__ uicr_REGOUT0_erased () ;

void board_modules_init0(void)
{
    if (uicr_REGOUT0_erased()) {


        while (NRF_NVMC->READY != NVMC_READY_READY_Ready);


        NRF_NVMC->CONFIG = NVMC_CONFIG_WEN_Wen;
        while (NRF_NVMC->READY != NVMC_READY_READY_Ready);


        NRF_UICR->REGOUT0 = (UICR_REGOUT0_VOUT_3V3 & UICR_REGOUT0_VOUT_Msk) << UICR_REGOUT0_VOUT_Pos;
        while (NRF_NVMC->READY != NVMC_READY_READY_Ready);


        NRF_NVMC->CONFIG = NVMC_CONFIG_WEN_Ren;
        while (NRF_NVMC->READY != NVMC_READY_READY_Ready);


        NVIC_SystemReset();
    }
}
