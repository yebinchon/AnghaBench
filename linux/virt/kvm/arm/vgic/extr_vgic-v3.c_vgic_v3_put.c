
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __vgic_v3_deactivate_traps (struct kvm_vcpu*) ;
 int __vgic_v3_save_aprs ;
 scalar_t__ has_vhe () ;
 int kvm_call_hyp (int ,struct kvm_vcpu*) ;
 int vgic_v3_vmcr_sync (struct kvm_vcpu*) ;

void vgic_v3_put(struct kvm_vcpu *vcpu)
{
 vgic_v3_vmcr_sync(vcpu);

 kvm_call_hyp(__vgic_v3_save_aprs, vcpu);

 if (has_vhe())
  __vgic_v3_deactivate_traps(vcpu);
}
