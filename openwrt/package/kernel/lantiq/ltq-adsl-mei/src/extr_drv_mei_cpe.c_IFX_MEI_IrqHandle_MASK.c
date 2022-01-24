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
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int* CMV_RxMsg; int cmv_waiting; int arcmsgav; int modem_ready; int /*<<< orphan*/  wait_queue_modemready; scalar_t__ Recent_indicator; int /*<<< orphan*/  modem_ready_cnt; int /*<<< orphan*/  wait_queue_arcmsgav; } ;
struct TYPE_3__ {int /*<<< orphan*/  pData; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;
typedef  size_t DSL_BSP_CB_Type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_MEI_MAILBOXR ; 
 int /*<<< orphan*/  ARC_TO_MEI_MSGAV ; 
 int D2H_AUTONOMOUS_MODEM_READY_MSG ; 
 size_t DSL_BSP_CB_CEOC_IRQ ; 
 size_t DSL_BSP_CB_FIRMWARE_REBOOT ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ ME_ARC2ME_STAT ; 
 int MSG_LENGTH ; 
 int OMB_CLEAREOC_INTERRUPT_CODE ; 
 int OMB_CODESWAP_MESSAGE_MSG_TYPE_MASK ; 
 int OMB_REBOOT_INTERRUPT_CODE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* dsl_bsp_event_callback ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC11 (int int1, void *void0)
{
	u32 scratch;
	DSL_DEV_Device_t *pDev = (DSL_DEV_Device_t *) void0;
#if defined(CONFIG_LTQ_MEI_FW_LOOPBACK) && defined(DFE_PING_TEST)
	dfe_loopback_irq_handler (pDev);
	return IRQ_HANDLED;
#endif //CONFIG_AMAZON_S_MEI_FW_LOOPBACK
        DSL_BSP_CB_Type_t event;

	if (pDev == NULL)
		FUNC3("Error: Got Interrupt but pDev is NULL!!!!\n");

	FUNC2 (pDev, ARC_MEI_MAILBOXR, &scratch, 1);
	if (scratch & OMB_CODESWAP_MESSAGE_MSG_TYPE_MASK) {
		FUNC3("Receive Code Swap Request interrupt!!!\n");
		return IRQ_HANDLED;
	}
	else if (scratch & OMB_CLEAREOC_INTERRUPT_CODE)	 {
		// clear eoc message interrupt
		FUNC1("OMB_CLEAREOC_INTERRUPT_CODE\n");
                event = DSL_BSP_CB_CEOC_IRQ;
		FUNC4 (pDev, (u32) ME_ARC2ME_STAT, ARC_TO_MEI_MSGAV);
                if (dsl_bsp_event_callback[event].function)
			(*dsl_bsp_event_callback[event].function)(pDev, event, dsl_bsp_event_callback[event].pData);
        } else if (scratch & OMB_REBOOT_INTERRUPT_CODE) {
                // Reboot
                FUNC1("OMB_REBOOT_INTERRUPT_CODE\n");
                event = DSL_BSP_CB_FIRMWARE_REBOOT;

		FUNC4 (pDev, (u32) ME_ARC2ME_STAT, ARC_TO_MEI_MSGAV);

                if (dsl_bsp_event_callback[event].function)
                        (*dsl_bsp_event_callback[event].function)(pDev, event, dsl_bsp_event_callback[event].pData);
        } else { // normal message
                FUNC5 (pDev, FUNC0(pDev)->CMV_RxMsg, MSG_LENGTH);
                if (FUNC0(pDev)-> cmv_waiting == 1) {
                        FUNC0(pDev)-> arcmsgav = 1;
                        FUNC0(pDev)-> cmv_waiting = 0;
#if !defined(BSP_PORT_RTEMS)
                        FUNC6 (FUNC0(pDev)->wait_queue_arcmsgav);
#endif
                }
		else {
			FUNC0(pDev)-> modem_ready_cnt++;
			FUNC8 ((char *) FUNC0(pDev)->Recent_indicator,
				(char *) FUNC0(pDev)->CMV_RxMsg, MSG_LENGTH * 2);
			if (((FUNC0(pDev)->CMV_RxMsg[0] & 0xff0) >> 4) == D2H_AUTONOMOUS_MODEM_READY_MSG) {
				//check ARC ready message
				FUNC1 ("Got MODEM_READY_MSG\n");
				FUNC0(pDev)->modem_ready = 1;
				FUNC6 (FUNC0(pDev)->wait_queue_modemready);
			}
		}
	}

	return IRQ_HANDLED;
}