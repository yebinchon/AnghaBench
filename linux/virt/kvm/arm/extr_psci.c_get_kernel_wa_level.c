
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;




 int KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_AVAIL ;
 int KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_NOT_AVAIL ;
 int KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_NOT_REQUIRED ;

 int KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_AVAIL ;
 int KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_NOT_AVAIL ;
 int KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_NOT_REQUIRED ;
 int KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_UNKNOWN ;





 int kvm_arm_harden_branch_predictor () ;
 int kvm_arm_have_ssbd () ;

__attribute__((used)) static int get_kernel_wa_level(u64 regid)
{
 switch (regid) {
 case 134:
  switch (kvm_arm_harden_branch_predictor()) {
  case 136:
   return KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_NOT_AVAIL;
  case 135:
   return KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_AVAIL;
  case 137:
   return KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_NOT_REQUIRED;
  }
  return KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_NOT_AVAIL;
 case 133:
  switch (kvm_arm_have_ssbd()) {
  case 132:
   return KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_NOT_AVAIL;
  case 130:
   return KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_AVAIL;
  case 131:
  case 129:
   return KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_NOT_REQUIRED;
  case 128:
  default:
   return KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_2_UNKNOWN;
  }
 }

 return -EINVAL;
}
