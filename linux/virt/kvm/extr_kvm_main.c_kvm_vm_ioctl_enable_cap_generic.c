
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_enable_cap {int cap; int* args; int flags; } ;
struct kvm {int manual_dirty_log_protect; } ;


 int EINVAL ;

 int kvm_vm_ioctl_enable_cap (struct kvm*,struct kvm_enable_cap*) ;

__attribute__((used)) static int kvm_vm_ioctl_enable_cap_generic(struct kvm *kvm,
        struct kvm_enable_cap *cap)
{
 switch (cap->cap) {







 default:
  return kvm_vm_ioctl_enable_cap(kvm, cap);
 }
}
