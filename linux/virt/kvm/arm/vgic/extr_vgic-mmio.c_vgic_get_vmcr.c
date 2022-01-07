
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_vmcr {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ VGIC_V2 ;
 TYPE_1__ kvm_vgic_global_state ;
 int vgic_v2_get_vmcr (struct kvm_vcpu*,struct vgic_vmcr*) ;
 int vgic_v3_get_vmcr (struct kvm_vcpu*,struct vgic_vmcr*) ;

void vgic_get_vmcr(struct kvm_vcpu *vcpu, struct vgic_vmcr *vmcr)
{
 if (kvm_vgic_global_state.type == VGIC_V2)
  vgic_v2_get_vmcr(vcpu, vmcr);
 else
  vgic_v3_get_vmcr(vcpu, vmcr);
}
