
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vgic_irq {struct kvm_vcpu* target_vcpu; scalar_t__ enabled; scalar_t__ vcpu; scalar_t__ active; int irq_lock; } ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_4__ {int enabled; } ;
struct TYPE_5__ {TYPE_1__ vgic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 scalar_t__ irq_is_pending (struct vgic_irq*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct kvm_vcpu *vgic_target_oracle(struct vgic_irq *irq)
{
 lockdep_assert_held(&irq->irq_lock);


 if (irq->active)
  return irq->vcpu ? : irq->target_vcpu;







 if (irq->enabled && irq_is_pending(irq)) {
  if (unlikely(irq->target_vcpu &&
        !irq->target_vcpu->kvm->arch.vgic.enabled))
   return ((void*)0);

  return irq->target_vcpu;
 }




 return ((void*)0);
}
