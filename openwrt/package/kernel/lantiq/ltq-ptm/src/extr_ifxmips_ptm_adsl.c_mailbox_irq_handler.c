
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_6__ {scalar_t__ vlddes; } ;
struct TYPE_5__ {TYPE_1__* itf; } ;
struct TYPE_4__ {int napi; } ;


 unsigned int IFX_REG_R32 (int ) ;
 int IFX_REG_W32 (unsigned int,int ) ;
 int IFX_REG_W32_MASK (int,int ,int ) ;
 int IRQ_HANDLED ;
 int MAX_ITF_NUMBER ;
 int MBOX_IGU1_IER ;
 int MBOX_IGU1_ISR ;
 int MBOX_IGU1_ISRC ;
 TYPE_3__* WRX_DMA_CHANNEL_CONFIG (int) ;
 int __fls (unsigned int) ;
 int * g_net_dev ;
 TYPE_2__ g_ptm_priv_data ;
 int mailbox_rx_irq_handler (int) ;
 int napi_schedule (int *) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static irqreturn_t mailbox_irq_handler(int irq, void *dev_id)
{
    unsigned int isr;
    int i;

    isr = IFX_REG_R32(MBOX_IGU1_ISR);
    IFX_REG_W32(isr, MBOX_IGU1_ISRC);
    isr &= IFX_REG_R32(MBOX_IGU1_IER);

    while ( (i = __fls(isr)) >= 0 ) {
        isr ^= 1 << i;

        if ( i >= 16 ) {

            IFX_REG_W32_MASK(1 << i, 0, MBOX_IGU1_IER);
            i -= 16;
            if ( i < MAX_ITF_NUMBER )
                netif_wake_queue(g_net_dev[i]);
        }
        else {





            IFX_REG_W32_MASK(1 << i, 0, MBOX_IGU1_IER);
            napi_schedule(&g_ptm_priv_data.itf[i].napi);

        }
    }

    return IRQ_HANDLED;
}
