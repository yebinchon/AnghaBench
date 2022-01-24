#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  smmu_mem_info_t ;
typedef  int /*<<< orphan*/  ifx_mei_device_private_t ;
struct TYPE_7__ {int /*<<< orphan*/  mei_cmv_sema; int /*<<< orphan*/  wait_queue_modemready; int /*<<< orphan*/  wait_queue_arcmsgav; scalar_t__ arcmsgav; scalar_t__ modem_ready; int /*<<< orphan*/ * adsl_mem_info; } ;
struct TYPE_6__ {int /*<<< orphan*/ * nIrq; scalar_t__ nInUse; scalar_t__ base_address; int /*<<< orphan*/ * pPriv; } ;
typedef  TYPE_1__ DSL_DEV_Device_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 size_t IFX_DFEIR ; 
 size_t IFX_DYING_GASP ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFX_MEI_IrqHandle ; 
 scalar_t__ KSEG1 ; 
 scalar_t__ LTQ_MEI_BASE_ADDR ; 
 int /*<<< orphan*/  LTQ_MEI_DYING_GASP_INT ; 
 int /*<<< orphan*/  LTQ_MEI_INT ; 
 int* LTQ_PMU_PWDCR ; 
 int MAX_BAR_REGISTERS ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* dsl_devices ; 
 int FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * sDanube_Mei_Private ; 

__attribute__((used)) static int
FUNC9 (int num)
{
	DSL_DEV_Device_t *pDev;
        u32 temp;
	pDev = &dsl_devices[num];
	if (pDev == NULL)
		return -ENOMEM;
	pDev->pPriv = &sDanube_Mei_Private[num];
	FUNC7 (pDev->pPriv, 0, sizeof (ifx_mei_device_private_t));

	FUNC7 (&FUNC0(pDev)->
		adsl_mem_info[0], 0,
		sizeof (smmu_mem_info_t) * MAX_BAR_REGISTERS);

	if (num == 0) {
		pDev->nIrq[IFX_DFEIR]      = LTQ_MEI_INT;
		pDev->nIrq[IFX_DYING_GASP] = LTQ_MEI_DYING_GASP_INT;
		pDev->base_address = KSEG1 + LTQ_MEI_BASE_ADDR;

                /* Power up MEI */
#ifdef CONFIG_LANTIQ_AMAZON_SE
		*LTQ_PMU_PWDCR &= ~(1 << 9);  // enable dsl
		*LTQ_PMU_PWDCR &= ~(1 << 15); // enable AHB base
#endif
		temp = FUNC5(LTQ_PMU_PWDCR);
		temp &= 0xffff7dbe;
		FUNC6(temp, LTQ_PMU_PWDCR);
	}
	pDev->nInUse = 0;
	FUNC0(pDev)->modem_ready = 0;
	FUNC0(pDev)->arcmsgav = 0;

	FUNC2 ("arcq", FUNC0(pDev)->wait_queue_arcmsgav);	// for ARCMSGAV
	FUNC2 ("arcr", FUNC0(pDev)->wait_queue_modemready);	// for arc modem ready

	FUNC4 (FUNC0(pDev)->mei_cmv_sema, 1);	// semaphore initialization, mutex
#if 0
	MEI_MASK_AND_ACK_IRQ (pDev->nIrq[IFX_DFEIR]);
	MEI_MASK_AND_ACK_IRQ (pDev->nIrq[IFX_DYING_GASP]);
#endif
	if (FUNC8 (pDev->nIrq[IFX_DFEIR], IFX_MEI_IrqHandle, 0, "DFEIR", pDev) != 0) {
		FUNC1 ("request_irq %d failed!\n", pDev->nIrq[IFX_DFEIR]);
		return -1;
	}
	/*if (request_irq (pDev->nIrq[IFX_DYING_GASP], IFX_MEI_Dying_Gasp_IrqHandle, 0, "DYING_GASP", pDev) != 0) {
		IFX_MEI_EMSG ("request_irq %d failed!\n", pDev->nIrq[IFX_DYING_GASP]);
		return -1;
	}*/
//	IFX_MEI_DMSG("Device %d initialized. IER %#x\n", num, bsp_get_irq_ier(pDev->nIrq[IFX_DYING_GASP]));
	return 0;
}