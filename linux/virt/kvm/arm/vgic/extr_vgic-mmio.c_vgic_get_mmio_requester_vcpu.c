
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 struct kvm_vcpu* kvm_arm_get_running_vcpu () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static struct kvm_vcpu *vgic_get_mmio_requester_vcpu(void)
{
 struct kvm_vcpu *vcpu;

 preempt_disable();
 vcpu = kvm_arm_get_running_vcpu();
 preempt_enable();
 return vcpu;
}
