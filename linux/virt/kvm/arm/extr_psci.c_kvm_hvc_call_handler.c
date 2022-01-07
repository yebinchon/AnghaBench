
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;





 int ARM_SMCCC_VERSION_1_1 ;
 int SMCCC_RET_NOT_REQUIRED ;
 int SMCCC_RET_NOT_SUPPORTED ;
 int SMCCC_RET_SUCCESS ;
 int kvm_arm_harden_branch_predictor () ;
 int kvm_arm_have_ssbd () ;
 int kvm_psci_call (struct kvm_vcpu*) ;
 int smccc_get_arg1 (struct kvm_vcpu*) ;
 int smccc_get_function (struct kvm_vcpu*) ;
 int smccc_set_retval (struct kvm_vcpu*,int,int ,int ,int ) ;

int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
{
 u32 func_id = smccc_get_function(vcpu);
 u32 val = SMCCC_RET_NOT_SUPPORTED;
 u32 feature;

 switch (func_id) {
 case 136:
  val = ARM_SMCCC_VERSION_1_1;
  break;
 case 139:
  feature = smccc_get_arg1(vcpu);
  switch(feature) {
  case 138:
   switch (kvm_arm_harden_branch_predictor()) {
   case 134:
    break;
   case 133:
    val = SMCCC_RET_SUCCESS;
    break;
   case 135:
    val = SMCCC_RET_NOT_REQUIRED;
    break;
   }
   break;
  case 137:
   switch (kvm_arm_have_ssbd()) {
   case 132:
   case 128:
    break;
   case 130:
    val = SMCCC_RET_SUCCESS;
    break;
   case 131:
   case 129:
    val = SMCCC_RET_NOT_REQUIRED;
    break;
   }
   break;
  }
  break;
 default:
  return kvm_psci_call(vcpu);
 }

 smccc_set_retval(vcpu, val, 0, 0, 0);
 return 1;
}
