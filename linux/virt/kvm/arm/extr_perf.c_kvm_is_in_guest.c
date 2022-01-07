
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * kvm_arm_get_running_vcpu () ;

__attribute__((used)) static int kvm_is_in_guest(void)
{
        return kvm_arm_get_running_vcpu() != ((void*)0);
}
