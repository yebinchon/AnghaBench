
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {void* owner; int irq_lock; } ;
struct kvm_vcpu {int kvm; } ;


 int EAGAIN ;
 int EEXIST ;
 int EINVAL ;
 int irq_is_ppi (unsigned int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,unsigned int) ;
 int vgic_initialized (int ) ;
 int vgic_valid_spi (int ,unsigned int) ;

int kvm_vgic_set_owner(struct kvm_vcpu *vcpu, unsigned int intid, void *owner)
{
 struct vgic_irq *irq;
 unsigned long flags;
 int ret = 0;

 if (!vgic_initialized(vcpu->kvm))
  return -EAGAIN;


 if (!irq_is_ppi(intid) && !vgic_valid_spi(vcpu->kvm, intid))
  return -EINVAL;

 irq = vgic_get_irq(vcpu->kvm, vcpu, intid);
 raw_spin_lock_irqsave(&irq->irq_lock, flags);
 if (irq->owner && irq->owner != owner)
  ret = -EEXIST;
 else
  irq->owner = owner;
 raw_spin_unlock_irqrestore(&irq->irq_lock, flags);

 return ret;
}
