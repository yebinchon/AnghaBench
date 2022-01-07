
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 long KVM_ADDRESS_SPACE_NUM ;
 long KVM_COALESCED_MMIO_PAGE_OFFSET ;
 long KVM_MAX_IRQ_ROUTES ;
 long KVM_USER_MEM_SLOTS ;
 long kvm_vm_ioctl_check_extension (struct kvm*,long) ;

__attribute__((used)) static long kvm_vm_ioctl_check_extension_generic(struct kvm *kvm, long arg)
{
 switch (arg) {
 case 128:
 case 140:
 case 133:
 case 138:







 case 137:
 case 143:
 case 139:



  return 1;
 case 130:
  return KVM_USER_MEM_SLOTS;
 default:
  break;
 }
 return kvm_vm_ioctl_check_extension(kvm, arg);
}
