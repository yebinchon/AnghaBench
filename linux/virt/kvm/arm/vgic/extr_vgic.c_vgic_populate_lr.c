
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_irq {int irq_lock; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ VGIC_V2 ;
 TYPE_1__ kvm_vgic_global_state ;
 int lockdep_assert_held (int *) ;
 int vgic_v2_populate_lr (struct kvm_vcpu*,struct vgic_irq*,int) ;
 int vgic_v3_populate_lr (struct kvm_vcpu*,struct vgic_irq*,int) ;

__attribute__((used)) static inline void vgic_populate_lr(struct kvm_vcpu *vcpu,
        struct vgic_irq *irq, int lr)
{
 lockdep_assert_held(&irq->irq_lock);

 if (kvm_vgic_global_state.type == VGIC_V2)
  vgic_v2_populate_lr(vcpu, irq, lr);
 else
  vgic_v3_populate_lr(vcpu, irq, lr);
}
