
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_4__ {scalar_t__ vgic_model; } ;
struct TYPE_5__ {TYPE_1__ vgic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V3 ;
 scalar_t__ VGIC_NR_PRIVATE_IRQS ;
 int kvm_arm_resume_guest (TYPE_3__*) ;

__attribute__((used)) static void vgic_change_active_finish(struct kvm_vcpu *vcpu, u32 intid)
{
 if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
     intid > VGIC_NR_PRIVATE_IRQS)
  kvm_arm_resume_guest(vcpu->kvm);
}
