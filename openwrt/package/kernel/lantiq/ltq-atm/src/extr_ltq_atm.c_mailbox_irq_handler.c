
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int * MBOX_IGU1_ISR ;
 int PPE_MAILBOX_IGU1_INT ;
 int disable_irq_nosync (int ) ;
 int g_dma_tasklet ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mailbox_irq_handler(int irq, void *dev_id)
{
 if ( !*MBOX_IGU1_ISR )
  return IRQ_HANDLED;

 disable_irq_nosync(PPE_MAILBOX_IGU1_INT);
 tasklet_schedule(&g_dma_tasklet);

 return IRQ_HANDLED;
}
