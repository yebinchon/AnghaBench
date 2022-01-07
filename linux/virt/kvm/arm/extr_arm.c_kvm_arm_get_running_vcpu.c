
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 struct kvm_vcpu* __this_cpu_read (int ) ;
 int kvm_arm_running_vcpu ;

struct kvm_vcpu *kvm_arm_get_running_vcpu(void)
{
 return __this_cpu_read(kvm_arm_running_vcpu);
}
