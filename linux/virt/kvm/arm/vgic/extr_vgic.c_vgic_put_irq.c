
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_irq {scalar_t__ intid; } ;
struct vgic_dist {int lpi_list_lock; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ VGIC_MIN_LPI ;
 int __vgic_put_lpi_locked (struct kvm*,struct vgic_irq*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq)
{
 struct vgic_dist *dist = &kvm->arch.vgic;
 unsigned long flags;

 if (irq->intid < VGIC_MIN_LPI)
  return;

 raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
 __vgic_put_lpi_locked(kvm, irq);
 raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
}
