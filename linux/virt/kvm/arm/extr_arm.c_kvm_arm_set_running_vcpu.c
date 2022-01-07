
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __this_cpu_write (int ,struct kvm_vcpu*) ;
 int kvm_arm_running_vcpu ;

__attribute__((used)) static void kvm_arm_set_running_vcpu(struct kvm_vcpu *vcpu)
{
 __this_cpu_write(kvm_arm_running_vcpu, vcpu);
}
