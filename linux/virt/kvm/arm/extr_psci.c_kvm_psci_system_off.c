
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int KVM_SYSTEM_EVENT_SHUTDOWN ;
 int kvm_prepare_system_event (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvm_psci_system_off(struct kvm_vcpu *vcpu)
{
 kvm_prepare_system_event(vcpu, KVM_SYSTEM_EVENT_SHUTDOWN);
}
