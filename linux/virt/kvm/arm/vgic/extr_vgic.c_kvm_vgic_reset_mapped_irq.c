
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vgic_irq {int active; int pending_latch; int line_level; int irq_lock; int hw; } ;
struct kvm_vcpu {int kvm; } ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,int ) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

void kvm_vgic_reset_mapped_irq(struct kvm_vcpu *vcpu, u32 vintid)
{
 struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, vintid);
 unsigned long flags;

 if (!irq->hw)
  goto out;

 raw_spin_lock_irqsave(&irq->irq_lock, flags);
 irq->active = 0;
 irq->pending_latch = 0;
 irq->line_level = 0;
 raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
out:
 vgic_put_irq(vcpu->kvm, irq);
}
