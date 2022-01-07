
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;



 unsigned long KVM_ARM_PSCI_1_0 ;
 unsigned long PSCI_RET_NOT_SUPPORTED ;
 int kvm_psci_0_2_call (struct kvm_vcpu*) ;
 int smccc_get_arg1 (struct kvm_vcpu*) ;
 int smccc_get_function (struct kvm_vcpu*) ;
 int smccc_set_retval (struct kvm_vcpu*,unsigned long,int ,int ,int ) ;

__attribute__((used)) static int kvm_psci_1_0_call(struct kvm_vcpu *vcpu)
{
 u32 psci_fn = smccc_get_function(vcpu);
 u32 feature;
 unsigned long val;
 int ret = 1;

 switch(psci_fn) {
 case 131:
  val = KVM_ARM_PSCI_1_0;
  break;
 case 128:
  feature = smccc_get_arg1(vcpu);
  switch(feature) {
  case 131:
  case 133:
  case 137:
  case 135:
  case 134:
  case 138:
  case 136:
  case 139:
  case 132:
  case 130:
  case 129:
  case 128:
  case 140:
   val = 0;
   break;
  default:
   val = PSCI_RET_NOT_SUPPORTED;
   break;
  }
  break;
 default:
  return kvm_psci_0_2_call(vcpu);
 }

 smccc_set_retval(vcpu, val, 0, 0, 0);
 return ret;
}
