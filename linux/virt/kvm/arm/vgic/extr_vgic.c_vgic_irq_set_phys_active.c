
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int host_irq; int hw; } ;


 int BUG_ON (int) ;
 int IRQCHIP_STATE_ACTIVE ;
 int WARN_ON (int ) ;
 int irq_set_irqchip_state (int ,int ,int) ;

void vgic_irq_set_phys_active(struct vgic_irq *irq, bool active)
{

 BUG_ON(!irq->hw);
 WARN_ON(irq_set_irqchip_state(irq->host_irq,
          IRQCHIP_STATE_ACTIVE,
          active));
}
