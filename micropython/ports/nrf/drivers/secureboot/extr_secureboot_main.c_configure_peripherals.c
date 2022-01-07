
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* GPIOPORT; } ;
struct TYPE_3__ {scalar_t__ PERM; } ;


 int NRF_CLOCK_S ;
 int NRF_DPPIC_S ;
 int NRF_EGU1_S ;
 int NRF_EGU2_S ;
 int NRF_EGU3_S ;
 int NRF_EGU4_S ;
 int NRF_EGU5_S ;
 int NRF_FPU_S ;
 int NRF_GPIOTE1_NS ;
 int NRF_I2S_S ;
 int NRF_IPC_S ;
 int NRF_NVMC_S ;
 int NRF_P0_NS ;
 int NRF_PDM_S ;
 int NRF_PWM0_S ;
 int NRF_PWM1_S ;
 int NRF_PWM2_S ;
 int NRF_PWM3_S ;
 int NRF_REGULATORS_S ;
 int NRF_RTC0_S ;
 int NRF_RTC1_S ;
 int NRF_SAADC_S ;
 TYPE_2__* NRF_SPU_S ;
 int NRF_TIMER0_S ;
 int NRF_TIMER1_S ;
 int NRF_TIMER2_S ;
 int NRF_UARTE0_S ;
 int NRF_UARTE1_S ;
 int NRF_UARTE2_S ;
 int NRF_UARTE3_S ;
 int NRF_VMC_S ;
 int NRF_WDT_S ;
 int PERIPHERAL_ID_GET (int ) ;
 int peripheral_setup (int ) ;

__attribute__((used)) static void configure_peripherals(void)
{
    NRF_SPU_S->GPIOPORT[0].PERM = 0;
    peripheral_setup(PERIPHERAL_ID_GET(NRF_REGULATORS_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_CLOCK_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_UARTE0_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_UARTE1_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_UARTE2_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_UARTE3_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_SAADC_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_TIMER0_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_TIMER1_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_TIMER2_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_RTC0_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_RTC1_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_DPPIC_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_WDT_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_EGU1_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_EGU2_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_EGU3_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_EGU4_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_EGU5_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_PWM0_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_PWM1_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_PWM2_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_PWM3_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_PDM_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_I2S_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_IPC_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_FPU_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_GPIOTE1_NS));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_NVMC_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_VMC_S));
    peripheral_setup(PERIPHERAL_ID_GET(NRF_P0_NS));
}
