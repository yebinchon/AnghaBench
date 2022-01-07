
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power_off; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_REQ_SLEEP ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_psci_vcpu_off(struct kvm_vcpu *vcpu)
{
 vcpu->arch.power_off = 1;
 kvm_make_request(KVM_REQ_SLEEP, vcpu);
 kvm_vcpu_kick(vcpu);
}
