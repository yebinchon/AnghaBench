
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int irq_lock; scalar_t__ active; scalar_t__ hw; } ;
struct kvm_vcpu {int kvm; } ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,unsigned int) ;
 int vgic_initialized (int ) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

bool kvm_vgic_map_is_active(struct kvm_vcpu *vcpu, unsigned int vintid)
{
 struct vgic_irq *irq;
 bool map_is_active;
 unsigned long flags;

 if (!vgic_initialized(vcpu->kvm))
  return 0;

 irq = vgic_get_irq(vcpu->kvm, vcpu, vintid);
 raw_spin_lock_irqsave(&irq->irq_lock, flags);
 map_is_active = irq->hw && irq->active;
 raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
 vgic_put_irq(vcpu->kvm, irq);

 return map_is_active;
}
