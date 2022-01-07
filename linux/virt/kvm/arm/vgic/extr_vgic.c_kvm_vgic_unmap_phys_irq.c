
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int irq_lock; } ;
struct kvm_vcpu {int kvm; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int kvm_vgic_unmap_irq (struct vgic_irq*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,unsigned int) ;
 int vgic_initialized (int ) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

int kvm_vgic_unmap_phys_irq(struct kvm_vcpu *vcpu, unsigned int vintid)
{
 struct vgic_irq *irq;
 unsigned long flags;

 if (!vgic_initialized(vcpu->kvm))
  return -EAGAIN;

 irq = vgic_get_irq(vcpu->kvm, vcpu, vintid);
 BUG_ON(!irq);

 raw_spin_lock_irqsave(&irq->irq_lock, flags);
 kvm_vgic_unmap_irq(irq);
 raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
 vgic_put_irq(vcpu->kvm, irq);

 return 0;
}
