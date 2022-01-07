
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ioeventfd {int len; int flags; } ;
struct kvm {int dummy; } ;
typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;


 int KVM_FAST_MMIO_BUS ;
 int KVM_MMIO_BUS ;
 int ioeventfd_bus_from_flags (int ) ;
 int kvm_deassign_ioeventfd_idx (struct kvm*,int,struct kvm_ioeventfd*) ;

__attribute__((used)) static int kvm_deassign_ioeventfd(struct kvm *kvm, struct kvm_ioeventfd *args)
{
 enum kvm_bus bus_idx = ioeventfd_bus_from_flags(args->flags);
 int ret = kvm_deassign_ioeventfd_idx(kvm, bus_idx, args);

 if (!args->len && bus_idx == KVM_MMIO_BUS)
  kvm_deassign_ioeventfd_idx(kvm, KVM_FAST_MMIO_BUS, args);

 return ret;
}
