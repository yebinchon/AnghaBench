
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_cpu {scalar_t__ used_lrs; int ap_list_head; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int WARN_ON (int ) ;
 scalar_t__ can_access_vgic_from_kernel () ;
 scalar_t__ list_empty (int *) ;
 int vgic_fold_lr_state (struct kvm_vcpu*) ;
 int vgic_prune_ap_list (struct kvm_vcpu*) ;
 int vgic_save_state (struct kvm_vcpu*) ;
 int vgic_v4_sync_hwstate (struct kvm_vcpu*) ;

void kvm_vgic_sync_hwstate(struct kvm_vcpu *vcpu)
{
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;

 WARN_ON(vgic_v4_sync_hwstate(vcpu));


 if (list_empty(&vcpu->arch.vgic_cpu.ap_list_head))
  return;

 if (can_access_vgic_from_kernel())
  vgic_save_state(vcpu);

 if (vgic_cpu->used_lrs)
  vgic_fold_lr_state(vcpu);
 vgic_prune_ap_list(vcpu);
}
