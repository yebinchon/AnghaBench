
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_enable_cap {int dummy; } ;
struct kvm {int dummy; } ;


 int EINVAL ;

int __attribute__((weak)) kvm_vm_ioctl_enable_cap(struct kvm *kvm,
        struct kvm_enable_cap *cap)
{
 return -EINVAL;
}
