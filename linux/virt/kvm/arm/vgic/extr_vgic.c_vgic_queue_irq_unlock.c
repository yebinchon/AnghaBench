
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_irq {int irq_lock; struct kvm_vcpu* vcpu; int ap_list; } ;
struct TYPE_3__ {int ap_list_lock; int ap_list_head; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm {int dummy; } ;


 int KVM_REQ_IRQ_PENDING ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int raw_spin_lock (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock (int *) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int vgic_get_irq_kref (struct vgic_irq*) ;
 struct kvm_vcpu* vgic_target_oracle (struct vgic_irq*) ;

bool vgic_queue_irq_unlock(struct kvm *kvm, struct vgic_irq *irq,
      unsigned long flags)
{
 struct kvm_vcpu *vcpu;

 lockdep_assert_held(&irq->irq_lock);

retry:
 vcpu = vgic_target_oracle(irq);
 if (irq->vcpu || !vcpu) {
  raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
  if (vcpu) {
   kvm_make_request(KVM_REQ_IRQ_PENDING, vcpu);
   kvm_vcpu_kick(vcpu);
  }
  return 0;
 }





 raw_spin_unlock_irqrestore(&irq->irq_lock, flags);



 raw_spin_lock_irqsave(&vcpu->arch.vgic_cpu.ap_list_lock, flags);
 raw_spin_lock(&irq->irq_lock);
 if (unlikely(irq->vcpu || vcpu != vgic_target_oracle(irq))) {
  raw_spin_unlock(&irq->irq_lock);
  raw_spin_unlock_irqrestore(&vcpu->arch.vgic_cpu.ap_list_lock,
        flags);

  raw_spin_lock_irqsave(&irq->irq_lock, flags);
  goto retry;
 }





 vgic_get_irq_kref(irq);
 list_add_tail(&irq->ap_list, &vcpu->arch.vgic_cpu.ap_list_head);
 irq->vcpu = vcpu;

 raw_spin_unlock(&irq->irq_lock);
 raw_spin_unlock_irqrestore(&vcpu->arch.vgic_cpu.ap_list_lock, flags);

 kvm_make_request(KVM_REQ_IRQ_PENDING, vcpu);
 kvm_vcpu_kick(vcpu);

 return 1;
}
