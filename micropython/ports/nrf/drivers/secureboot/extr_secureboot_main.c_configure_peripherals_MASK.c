#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* GPIOPORT; } ;
struct TYPE_3__ {scalar_t__ PERM; } ;

/* Variables and functions */
 int /*<<< orphan*/  NRF_CLOCK_S ; 
 int /*<<< orphan*/  NRF_DPPIC_S ; 
 int /*<<< orphan*/  NRF_EGU1_S ; 
 int /*<<< orphan*/  NRF_EGU2_S ; 
 int /*<<< orphan*/  NRF_EGU3_S ; 
 int /*<<< orphan*/  NRF_EGU4_S ; 
 int /*<<< orphan*/  NRF_EGU5_S ; 
 int /*<<< orphan*/  NRF_FPU_S ; 
 int /*<<< orphan*/  NRF_GPIOTE1_NS ; 
 int /*<<< orphan*/  NRF_I2S_S ; 
 int /*<<< orphan*/  NRF_IPC_S ; 
 int /*<<< orphan*/  NRF_NVMC_S ; 
 int /*<<< orphan*/  NRF_P0_NS ; 
 int /*<<< orphan*/  NRF_PDM_S ; 
 int /*<<< orphan*/  NRF_PWM0_S ; 
 int /*<<< orphan*/  NRF_PWM1_S ; 
 int /*<<< orphan*/  NRF_PWM2_S ; 
 int /*<<< orphan*/  NRF_PWM3_S ; 
 int /*<<< orphan*/  NRF_REGULATORS_S ; 
 int /*<<< orphan*/  NRF_RTC0_S ; 
 int /*<<< orphan*/  NRF_RTC1_S ; 
 int /*<<< orphan*/  NRF_SAADC_S ; 
 TYPE_2__* NRF_SPU_S ; 
 int /*<<< orphan*/  NRF_TIMER0_S ; 
 int /*<<< orphan*/  NRF_TIMER1_S ; 
 int /*<<< orphan*/  NRF_TIMER2_S ; 
 int /*<<< orphan*/  NRF_UARTE0_S ; 
 int /*<<< orphan*/  NRF_UARTE1_S ; 
 int /*<<< orphan*/  NRF_UARTE2_S ; 
 int /*<<< orphan*/  NRF_UARTE3_S ; 
 int /*<<< orphan*/  NRF_VMC_S ; 
 int /*<<< orphan*/  NRF_WDT_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
    NRF_SPU_S->GPIOPORT[0].PERM = 0;
    FUNC1(FUNC0(NRF_REGULATORS_S));
    FUNC1(FUNC0(NRF_CLOCK_S));
    FUNC1(FUNC0(NRF_UARTE0_S));
    FUNC1(FUNC0(NRF_UARTE1_S));
    FUNC1(FUNC0(NRF_UARTE2_S));
    FUNC1(FUNC0(NRF_UARTE3_S));
    FUNC1(FUNC0(NRF_SAADC_S));
    FUNC1(FUNC0(NRF_TIMER0_S));
    FUNC1(FUNC0(NRF_TIMER1_S));
    FUNC1(FUNC0(NRF_TIMER2_S));
    FUNC1(FUNC0(NRF_RTC0_S));
    FUNC1(FUNC0(NRF_RTC1_S));
    FUNC1(FUNC0(NRF_DPPIC_S));
    FUNC1(FUNC0(NRF_WDT_S));
    FUNC1(FUNC0(NRF_EGU1_S));
    FUNC1(FUNC0(NRF_EGU2_S));
    FUNC1(FUNC0(NRF_EGU3_S));
    FUNC1(FUNC0(NRF_EGU4_S));
    FUNC1(FUNC0(NRF_EGU5_S));
    FUNC1(FUNC0(NRF_PWM0_S));
    FUNC1(FUNC0(NRF_PWM1_S));
    FUNC1(FUNC0(NRF_PWM2_S));
    FUNC1(FUNC0(NRF_PWM3_S));
    FUNC1(FUNC0(NRF_PDM_S));
    FUNC1(FUNC0(NRF_I2S_S));
    FUNC1(FUNC0(NRF_IPC_S));
    FUNC1(FUNC0(NRF_FPU_S));
    FUNC1(FUNC0(NRF_GPIOTE1_NS));
    FUNC1(FUNC0(NRF_NVMC_S));
    FUNC1(FUNC0(NRF_VMC_S));
    FUNC1(FUNC0(NRF_P0_NS));
}