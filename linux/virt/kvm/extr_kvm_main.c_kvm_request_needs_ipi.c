
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int IN_GUEST_MODE ;
 unsigned int KVM_REQUEST_WAIT ;
 int OUTSIDE_GUEST_MODE ;
 int kvm_vcpu_exiting_guest_mode (struct kvm_vcpu*) ;

__attribute__((used)) static bool kvm_request_needs_ipi(struct kvm_vcpu *vcpu, unsigned req)
{
 int mode = kvm_vcpu_exiting_guest_mode(vcpu);





 if (req & KVM_REQUEST_WAIT)
  return mode != OUTSIDE_GUEST_MODE;




 return mode == IN_GUEST_MODE;
}
