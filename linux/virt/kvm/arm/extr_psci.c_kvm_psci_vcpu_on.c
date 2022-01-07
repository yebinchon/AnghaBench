
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct vcpu_reset_state {int reset; int r0; int be; int pc; } ;
struct TYPE_2__ {int power_off; struct vcpu_reset_state reset_state; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm {int dummy; } ;


 scalar_t__ KVM_ARM_PSCI_0_1 ;
 int KVM_REQ_VCPU_RESET ;
 unsigned long MPIDR_HWID_BITMASK ;
 unsigned long PSCI_RET_ALREADY_ON ;
 unsigned long PSCI_RET_INVALID_PARAMS ;
 unsigned long PSCI_RET_SUCCESS ;
 int WRITE_ONCE (int ,int) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 struct kvm_vcpu* kvm_mpidr_to_vcpu (struct kvm*,unsigned long) ;
 scalar_t__ kvm_psci_version (struct kvm_vcpu*,struct kvm*) ;
 int kvm_vcpu_is_be (struct kvm_vcpu*) ;
 int kvm_vcpu_wake_up (struct kvm_vcpu*) ;
 unsigned long smccc_get_arg1 (struct kvm_vcpu*) ;
 int smccc_get_arg2 (struct kvm_vcpu*) ;
 int smccc_get_arg3 (struct kvm_vcpu*) ;
 int smp_wmb () ;
 scalar_t__ vcpu_mode_is_32bit (struct kvm_vcpu*) ;

__attribute__((used)) static unsigned long kvm_psci_vcpu_on(struct kvm_vcpu *source_vcpu)
{
 struct vcpu_reset_state *reset_state;
 struct kvm *kvm = source_vcpu->kvm;
 struct kvm_vcpu *vcpu = ((void*)0);
 unsigned long cpu_id;

 cpu_id = smccc_get_arg1(source_vcpu) & MPIDR_HWID_BITMASK;
 if (vcpu_mode_is_32bit(source_vcpu))
  cpu_id &= ~((u32) 0);

 vcpu = kvm_mpidr_to_vcpu(kvm, cpu_id);





 if (!vcpu)
  return PSCI_RET_INVALID_PARAMS;
 if (!vcpu->arch.power_off) {
  if (kvm_psci_version(source_vcpu, kvm) != KVM_ARM_PSCI_0_1)
   return PSCI_RET_ALREADY_ON;
  else
   return PSCI_RET_INVALID_PARAMS;
 }

 reset_state = &vcpu->arch.reset_state;

 reset_state->pc = smccc_get_arg2(source_vcpu);


 reset_state->be = kvm_vcpu_is_be(source_vcpu);





 reset_state->r0 = smccc_get_arg3(source_vcpu);

 WRITE_ONCE(reset_state->reset, 1);
 kvm_make_request(KVM_REQ_VCPU_RESET, vcpu);





 smp_wmb();

 vcpu->arch.power_off = 0;
 kvm_vcpu_wake_up(vcpu);

 return PSCI_RET_SUCCESS;
}
