
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int lock; } ;


 unsigned long KVM_ARM_PSCI_0_2 ;
 unsigned long PSCI_0_2_TOS_MP ;
 unsigned long PSCI_RET_INTERNAL_FAILURE ;
 unsigned long PSCI_RET_NOT_SUPPORTED ;
 unsigned long PSCI_RET_SUCCESS ;
 int kvm_psci_system_off (struct kvm_vcpu*) ;
 int kvm_psci_system_reset (struct kvm_vcpu*) ;
 unsigned long kvm_psci_vcpu_affinity_info (struct kvm_vcpu*) ;
 int kvm_psci_vcpu_off (struct kvm_vcpu*) ;
 unsigned long kvm_psci_vcpu_on (struct kvm_vcpu*) ;
 unsigned long kvm_psci_vcpu_suspend (struct kvm_vcpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smccc_get_function (struct kvm_vcpu*) ;
 int smccc_set_retval (struct kvm_vcpu*,unsigned long,int ,int ,int ) ;

__attribute__((used)) static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
{
 struct kvm *kvm = vcpu->kvm;
 u32 psci_fn = smccc_get_function(vcpu);
 unsigned long val;
 int ret = 1;

 switch (psci_fn) {
 case 130:




  val = KVM_ARM_PSCI_0_2;
  break;
 case 132:
 case 136:
  val = kvm_psci_vcpu_suspend(vcpu);
  break;
 case 134:
  kvm_psci_vcpu_off(vcpu);
  val = PSCI_RET_SUCCESS;
  break;
 case 133:
 case 137:
  mutex_lock(&kvm->lock);
  val = kvm_psci_vcpu_on(vcpu);
  mutex_unlock(&kvm->lock);
  break;
 case 135:
 case 138:
  val = kvm_psci_vcpu_affinity_info(vcpu);
  break;
 case 131:





  val = PSCI_0_2_TOS_MP;
  break;
 case 129:
  kvm_psci_system_off(vcpu);
  val = PSCI_RET_INTERNAL_FAILURE;
  ret = 0;
  break;
 case 128:
  kvm_psci_system_reset(vcpu);




  val = PSCI_RET_INTERNAL_FAILURE;
  ret = 0;
  break;
 default:
  val = PSCI_RET_NOT_SUPPORTED;
  break;
 }

 smccc_set_retval(vcpu, val, 0, 0, 0);
 return ret;
}
