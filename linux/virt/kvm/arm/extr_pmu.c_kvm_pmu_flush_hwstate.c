
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_pmu_update_state (struct kvm_vcpu*) ;

void kvm_pmu_flush_hwstate(struct kvm_vcpu *vcpu)
{
 kvm_pmu_update_state(vcpu);
}
