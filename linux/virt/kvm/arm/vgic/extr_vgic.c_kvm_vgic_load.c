
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int kvm; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ VGIC_V2 ;
 TYPE_1__ kvm_vgic_global_state ;
 scalar_t__ unlikely (int) ;
 int vgic_initialized (int ) ;
 int vgic_v2_load (struct kvm_vcpu*) ;
 int vgic_v3_load (struct kvm_vcpu*) ;

void kvm_vgic_load(struct kvm_vcpu *vcpu)
{
 if (unlikely(!vgic_initialized(vcpu->kvm)))
  return;

 if (kvm_vgic_global_state.type == VGIC_V2)
  vgic_v2_load(vcpu);
 else
  vgic_v3_load(vcpu);
}
