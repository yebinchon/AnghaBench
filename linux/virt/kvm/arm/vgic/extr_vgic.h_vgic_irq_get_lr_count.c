
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int active; scalar_t__ source; int intid; } ;


 int hweight8 (scalar_t__) ;
 scalar_t__ irq_is_pending (struct vgic_irq*) ;
 scalar_t__ vgic_irq_is_sgi (int ) ;

__attribute__((used)) static inline int vgic_irq_get_lr_count(struct vgic_irq *irq)
{

 if (vgic_irq_is_sgi(irq->intid) && irq->source)
  return hweight8(irq->source) + irq->active;

 return irq_is_pending(irq) || irq->active;
}
