
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int host_irq; } ;


 int IRQCHIP_STATE_PENDING ;
 int WARN_ON (int ) ;
 int irq_set_irqchip_state (int ,int ,int) ;

void vgic_irq_set_phys_pending(struct vgic_irq *irq, bool pending)
{
 WARN_ON(irq_set_irqchip_state(irq->host_irq,
          IRQCHIP_STATE_PENDING,
          pending));
}
