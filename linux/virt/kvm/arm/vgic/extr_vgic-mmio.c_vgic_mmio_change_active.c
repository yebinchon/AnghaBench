
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct vgic_irq {int active; int irq_lock; int active_source; int intid; scalar_t__ hw; } ;
struct kvm_vcpu {TYPE_3__* kvm; int vcpu_id; } ;
struct TYPE_4__ {scalar_t__ vgic_model; } ;
struct TYPE_5__ {TYPE_1__ vgic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V2 ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct kvm_vcpu* vgic_get_mmio_requester_vcpu () ;
 int vgic_hw_irq_change_active (struct kvm_vcpu*,struct vgic_irq*,int,int) ;
 scalar_t__ vgic_irq_is_sgi (int ) ;
 int vgic_queue_irq_unlock (TYPE_3__*,struct vgic_irq*,unsigned long) ;

__attribute__((used)) static void vgic_mmio_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
        bool active)
{
 unsigned long flags;
 struct kvm_vcpu *requester_vcpu = vgic_get_mmio_requester_vcpu();

 raw_spin_lock_irqsave(&irq->irq_lock, flags);

 if (irq->hw) {
  vgic_hw_irq_change_active(vcpu, irq, active, !requester_vcpu);
 } else {
  u32 model = vcpu->kvm->arch.vgic.vgic_model;
  u8 active_source;

  irq->active = active;
  active_source = (requester_vcpu) ? requester_vcpu->vcpu_id : 0;

  if (model == KVM_DEV_TYPE_ARM_VGIC_V2 &&
      active && vgic_irq_is_sgi(irq->intid))
   irq->active_source = active_source;
 }

 if (irq->active)
  vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
 else
  raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
}
