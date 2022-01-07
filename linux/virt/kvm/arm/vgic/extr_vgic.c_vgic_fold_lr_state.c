
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ VGIC_V2 ;
 TYPE_1__ kvm_vgic_global_state ;
 int vgic_v2_fold_lr_state (struct kvm_vcpu*) ;
 int vgic_v3_fold_lr_state (struct kvm_vcpu*) ;

__attribute__((used)) static inline void vgic_fold_lr_state(struct kvm_vcpu *vcpu)
{
 if (kvm_vgic_global_state.type == VGIC_V2)
  vgic_v2_fold_lr_state(vcpu);
 else
  vgic_v3_fold_lr_state(vcpu);
}
