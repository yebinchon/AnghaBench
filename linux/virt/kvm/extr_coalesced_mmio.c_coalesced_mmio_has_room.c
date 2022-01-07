
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_coalesced_mmio_ring {int first; } ;
struct kvm_coalesced_mmio_dev {TYPE_1__* kvm; } ;
struct TYPE_2__ {struct kvm_coalesced_mmio_ring* coalesced_mmio_ring; } ;


 int KVM_COALESCED_MMIO_MAX ;

__attribute__((used)) static int coalesced_mmio_has_room(struct kvm_coalesced_mmio_dev *dev, u32 last)
{
 struct kvm_coalesced_mmio_ring *ring;
 unsigned avail;







 ring = dev->kvm->coalesced_mmio_ring;
 avail = (ring->first - last - 1) % KVM_COALESCED_MMIO_MAX;
 if (avail == 0) {

  return 0;
 }

 return 1;
}
