#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {scalar_t__ vlddes; } ;
struct TYPE_5__ {TYPE_1__* itf; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MAX_ITF_NUMBER ; 
 int /*<<< orphan*/  MBOX_IGU1_IER ; 
 int /*<<< orphan*/  MBOX_IGU1_ISR ; 
 int /*<<< orphan*/  MBOX_IGU1_ISRC ; 
 TYPE_3__* FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/ * g_net_dev ; 
 TYPE_2__ g_ptm_priv_data ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
    unsigned int isr;
    int i;

    isr = FUNC0(MBOX_IGU1_ISR);
    FUNC1(isr, MBOX_IGU1_ISRC);
    isr &= FUNC0(MBOX_IGU1_IER);

    while ( (i = FUNC4(isr)) >= 0 ) {
        isr ^= 1 << i;

        if ( i >= 16 ) {
            //  TX
            FUNC2(1 << i, 0, MBOX_IGU1_IER);
            i -= 16;
            if ( i < MAX_ITF_NUMBER )
                FUNC7(g_net_dev[i]);
        }
        else {
            //  RX
#ifdef CONFIG_IFX_PTM_RX_INTERRUPT
            while ( WRX_DMA_CHANNEL_CONFIG(i)->vlddes > 0 )
                mailbox_rx_irq_handler(i);
#else
            FUNC2(1 << i, 0, MBOX_IGU1_IER);
            FUNC6(&g_ptm_priv_data.itf[i].napi);
#endif
        }
    }

    return IRQ_HANDLED;
}