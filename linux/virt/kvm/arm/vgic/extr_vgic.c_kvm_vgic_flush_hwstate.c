
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ap_list_lock; int ap_list_head; } ;
struct TYPE_3__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 int DEBUG_SPINLOCK_BUG_ON (int) ;
 int WARN_ON (int ) ;
 scalar_t__ can_access_vgic_from_kernel () ;
 int irqs_disabled () ;
 scalar_t__ list_empty (int *) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int vgic_flush_lr_state (struct kvm_vcpu*) ;
 int vgic_restore_state (struct kvm_vcpu*) ;
 int vgic_supports_direct_msis (int ) ;
 int vgic_v4_flush_hwstate (struct kvm_vcpu*) ;

void kvm_vgic_flush_hwstate(struct kvm_vcpu *vcpu)
{
 WARN_ON(vgic_v4_flush_hwstate(vcpu));
 if (list_empty(&vcpu->arch.vgic_cpu.ap_list_head) &&
     !vgic_supports_direct_msis(vcpu->kvm))
  return;

 DEBUG_SPINLOCK_BUG_ON(!irqs_disabled());

 if (!list_empty(&vcpu->arch.vgic_cpu.ap_list_head)) {
  raw_spin_lock(&vcpu->arch.vgic_cpu.ap_list_lock);
  vgic_flush_lr_state(vcpu);
  raw_spin_unlock(&vcpu->arch.vgic_cpu.ap_list_lock);
 }

 if (can_access_vgic_from_kernel())
  vgic_restore_state(vcpu);
}
