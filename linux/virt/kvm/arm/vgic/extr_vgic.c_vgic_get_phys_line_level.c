
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int (* get_input_level ) (int ) ;int host_irq; int intid; int hw; } ;


 int BUG_ON (int) ;
 int IRQCHIP_STATE_PENDING ;
 int WARN_ON (int ) ;
 int irq_get_irqchip_state (int ,int ,int*) ;
 int stub1 (int ) ;

bool vgic_get_phys_line_level(struct vgic_irq *irq)
{
 bool line_level;

 BUG_ON(!irq->hw);

 if (irq->get_input_level)
  return irq->get_input_level(irq->intid);

 WARN_ON(irq_get_irqchip_state(irq->host_irq,
          IRQCHIP_STATE_PENDING,
          &line_level));
 return line_level;
}
