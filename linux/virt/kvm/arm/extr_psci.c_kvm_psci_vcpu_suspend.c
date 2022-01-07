
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_REQ_UNHALT ;
 unsigned long PSCI_RET_SUCCESS ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;

__attribute__((used)) static unsigned long kvm_psci_vcpu_suspend(struct kvm_vcpu *vcpu)
{
 kvm_vcpu_block(vcpu);
 kvm_clear_request(KVM_REQ_UNHALT, vcpu);

 return PSCI_RET_SUCCESS;
}
