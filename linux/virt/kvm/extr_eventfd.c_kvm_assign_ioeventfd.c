
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ioeventfd {int flags; int len; scalar_t__ addr; } ;
struct kvm {int dummy; } ;
typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;


 int EINVAL ;
 int KVM_FAST_MMIO_BUS ;
 int KVM_IOEVENTFD_FLAG_DATAMATCH ;
 int KVM_IOEVENTFD_VALID_FLAG_MASK ;
 int KVM_MMIO_BUS ;
 int ioeventfd_bus_from_flags (int) ;
 int kvm_assign_ioeventfd_idx (struct kvm*,int,struct kvm_ioeventfd*) ;
 int kvm_deassign_ioeventfd_idx (struct kvm*,int,struct kvm_ioeventfd*) ;

__attribute__((used)) static int
kvm_assign_ioeventfd(struct kvm *kvm, struct kvm_ioeventfd *args)
{
 enum kvm_bus bus_idx;
 int ret;

 bus_idx = ioeventfd_bus_from_flags(args->flags);

 switch (args->len) {
 case 0:
 case 1:
 case 2:
 case 4:
 case 8:
  break;
 default:
  return -EINVAL;
 }


 if (args->addr + args->len < args->addr)
  return -EINVAL;


 if (args->flags & ~KVM_IOEVENTFD_VALID_FLAG_MASK)
  return -EINVAL;


 if (!args->len && (args->flags & KVM_IOEVENTFD_FLAG_DATAMATCH))
  return -EINVAL;

 ret = kvm_assign_ioeventfd_idx(kvm, bus_idx, args);
 if (ret)
  goto fail;




 if (!args->len && bus_idx == KVM_MMIO_BUS) {
  ret = kvm_assign_ioeventfd_idx(kvm, KVM_FAST_MMIO_BUS, args);
  if (ret < 0)
   goto fast_fail;
 }

 return 0;

fast_fail:
 kvm_deassign_ioeventfd_idx(kvm, bus_idx, args);
fail:
 return ret;
}
