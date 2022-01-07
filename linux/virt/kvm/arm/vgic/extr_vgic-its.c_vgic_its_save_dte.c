
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef scalar_t__ u32 ;
struct vgic_its {int device_list; TYPE_1__* dev; } ;
struct kvm {int dummy; } ;
struct its_device {int itt_addr; int num_eventid_bits; } ;
typedef int gpa_t ;
struct TYPE_2__ {struct kvm* kvm; } ;


 unsigned long long KVM_ITS_DTE_ITTADDR_SHIFT ;
 unsigned long long KVM_ITS_DTE_NEXT_SHIFT ;
 unsigned long long KVM_ITS_DTE_VALID_SHIFT ;
 scalar_t__ compute_next_devid_offset (int *,struct its_device*) ;
 unsigned long long cpu_to_le64 (unsigned long long) ;
 int kvm_write_guest_lock (struct kvm*,int ,unsigned long long*,int) ;

__attribute__((used)) static int vgic_its_save_dte(struct vgic_its *its, struct its_device *dev,
        gpa_t ptr, int dte_esz)
{
 struct kvm *kvm = its->dev->kvm;
 u64 val, itt_addr_field;
 u32 next_offset;

 itt_addr_field = dev->itt_addr >> 8;
 next_offset = compute_next_devid_offset(&its->device_list, dev);
 val = (1ULL << KVM_ITS_DTE_VALID_SHIFT |
        ((u64)next_offset << KVM_ITS_DTE_NEXT_SHIFT) |
        (itt_addr_field << KVM_ITS_DTE_ITTADDR_SHIFT) |
  (dev->num_eventid_bits - 1));
 val = cpu_to_le64(val);
 return kvm_write_guest_lock(kvm, ptr, &val, dte_esz);
}
