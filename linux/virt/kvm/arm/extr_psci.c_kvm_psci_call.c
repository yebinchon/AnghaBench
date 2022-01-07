
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 int EINVAL ;



 int kvm_psci_0_1_call (struct kvm_vcpu*) ;
 int kvm_psci_0_2_call (struct kvm_vcpu*) ;
 int kvm_psci_1_0_call (struct kvm_vcpu*) ;
 int kvm_psci_version (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvm_psci_call(struct kvm_vcpu *vcpu)
{
 switch (kvm_psci_version(vcpu, vcpu->kvm)) {
 case 128:
  return kvm_psci_1_0_call(vcpu);
 case 129:
  return kvm_psci_0_2_call(vcpu);
 case 130:
  return kvm_psci_0_1_call(vcpu);
 default:
  return -EINVAL;
 };
}
