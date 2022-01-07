
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vgic_its {int dummy; } ;
struct vgic_irq {int pending_latch; int irq_lock; int host_irq; scalar_t__ hw; } ;
struct kvm {int dummy; } ;


 int IRQCHIP_STATE_PENDING ;
 int irq_set_irqchip_state (int ,int ,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int vgic_its_resolve_lpi (struct kvm*,struct vgic_its*,int ,int ,struct vgic_irq**) ;
 int vgic_queue_irq_unlock (struct kvm*,struct vgic_irq*,unsigned long) ;

__attribute__((used)) static int vgic_its_trigger_msi(struct kvm *kvm, struct vgic_its *its,
    u32 devid, u32 eventid)
{
 struct vgic_irq *irq = ((void*)0);
 unsigned long flags;
 int err;

 err = vgic_its_resolve_lpi(kvm, its, devid, eventid, &irq);
 if (err)
  return err;

 if (irq->hw)
  return irq_set_irqchip_state(irq->host_irq,
          IRQCHIP_STATE_PENDING, 1);

 raw_spin_lock_irqsave(&irq->irq_lock, flags);
 irq->pending_latch = 1;
 vgic_queue_irq_unlock(kvm, irq, flags);

 return 0;
}
