
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int gicv3_cpuif; } ;


 int __vgic_v3_save_state (struct kvm_vcpu*) ;
 TYPE_1__ kvm_vgic_global_state ;
 int static_branch_unlikely (int *) ;
 int vgic_v2_save_state (struct kvm_vcpu*) ;

__attribute__((used)) static inline void vgic_save_state(struct kvm_vcpu *vcpu)
{
 if (!static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif))
  vgic_v2_save_state(vcpu);
 else
  __vgic_v3_save_state(vcpu);
}
