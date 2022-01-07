
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int lock; } ;




 unsigned long PSCI_RET_NOT_SUPPORTED ;
 unsigned long PSCI_RET_SUCCESS ;
 int kvm_psci_vcpu_off (struct kvm_vcpu*) ;
 unsigned long kvm_psci_vcpu_on (struct kvm_vcpu*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smccc_get_function (struct kvm_vcpu*) ;
 int smccc_set_retval (struct kvm_vcpu*,unsigned long,int ,int ,int ) ;

__attribute__((used)) static int kvm_psci_0_1_call(struct kvm_vcpu *vcpu)
{
 struct kvm *kvm = vcpu->kvm;
 u32 psci_fn = smccc_get_function(vcpu);
 unsigned long val;

 switch (psci_fn) {
 case 129:
  kvm_psci_vcpu_off(vcpu);
  val = PSCI_RET_SUCCESS;
  break;
 case 128:
  mutex_lock(&kvm->lock);
  val = kvm_psci_vcpu_on(vcpu);
  mutex_unlock(&kvm->lock);
  break;
 default:
  val = PSCI_RET_NOT_SUPPORTED;
  break;
 }

 smccc_set_retval(vcpu, val, 0, 0, 0);
 return 1;
}
