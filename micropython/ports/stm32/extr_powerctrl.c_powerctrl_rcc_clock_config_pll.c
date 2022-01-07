
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int PLLSAICFGR; int CR; int DCKCFGR2; } ;
struct TYPE_5__ {int SYSCLKSource; } ;
typedef TYPE_1__ RCC_ClkInitTypeDef ;


 int FLASH_LATENCY_0 ;
 int FLASH_LATENCY_1 ;
 int FLASH_LATENCY_2 ;
 int FLASH_LATENCY_3 ;
 int FLASH_LATENCY_4 ;
 int FLASH_LATENCY_5 ;
 int FLASH_LATENCY_6 ;
 int FLASH_LATENCY_7 ;
 scalar_t__ HAL_OK ;
 scalar_t__ HAL_PWREx_ControlVoltageScaling (int) ;
 scalar_t__ HAL_RCC_ClockConfig (TYPE_1__*,int) ;
 int MICROPY_HW_FLASH_LATENCY ;
 int MP_EIO ;
 int MP_ETIMEDOUT ;
 int PWR_REGULATOR_VOLTAGE_SCALE1 ;
 int PWR_REGULATOR_VOLTAGE_SCALE2 ;
 int PWR_REGULATOR_VOLTAGE_SCALE3 ;
 TYPE_3__* RCC ;
 int RCC_CR_PLLSAION ;
 int RCC_CR_PLLSAIRDY ;
 int RCC_DCKCFGR2_CK48MSEL ;
 int const RCC_PLLSAICFGR_PLLSAIN_Pos ;
 int const RCC_PLLSAICFGR_PLLSAIP_Pos ;
 int const RCC_PLLSAICFGR_PLLSAIQ_Pos ;
 int RCC_SYSCLKSOURCE_PLLCLK ;
 int mp_hal_ticks_ms () ;

int powerctrl_rcc_clock_config_pll(RCC_ClkInitTypeDef *rcc_init, uint32_t sysclk_mhz, bool need_pllsai) {
    uint32_t flash_latency;
    flash_latency = FLASH_LATENCY_5;


    rcc_init->SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
    if (HAL_RCC_ClockConfig(rcc_init, flash_latency) != HAL_OK) {
        return -MP_EIO;
    }

    return 0;
}
