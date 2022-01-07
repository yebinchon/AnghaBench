
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_io_device {int dummy; } ;
struct kvm_coalesced_mmio_ring {size_t last; TYPE_1__* coalesced_mmio; } ;
struct TYPE_5__ {int pio; } ;
struct kvm_coalesced_mmio_dev {TYPE_3__* kvm; TYPE_2__ zone; } ;
typedef int gpa_t ;
typedef size_t __u32 ;
struct TYPE_6__ {int ring_lock; struct kvm_coalesced_mmio_ring* coalesced_mmio_ring; } ;
struct TYPE_4__ {int len; int pio; int data; int phys_addr; } ;


 int EOPNOTSUPP ;
 size_t KVM_COALESCED_MMIO_MAX ;
 size_t READ_ONCE (size_t) ;
 int coalesced_mmio_has_room (struct kvm_coalesced_mmio_dev*,size_t) ;
 int coalesced_mmio_in_range (struct kvm_coalesced_mmio_dev*,int ,int) ;
 int memcpy (int ,void const*,int) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct kvm_coalesced_mmio_dev* to_mmio (struct kvm_io_device*) ;

__attribute__((used)) static int coalesced_mmio_write(struct kvm_vcpu *vcpu,
    struct kvm_io_device *this, gpa_t addr,
    int len, const void *val)
{
 struct kvm_coalesced_mmio_dev *dev = to_mmio(this);
 struct kvm_coalesced_mmio_ring *ring = dev->kvm->coalesced_mmio_ring;
 __u32 insert;

 if (!coalesced_mmio_in_range(dev, addr, len))
  return -EOPNOTSUPP;

 spin_lock(&dev->kvm->ring_lock);

 insert = READ_ONCE(ring->last);
 if (!coalesced_mmio_has_room(dev, insert) ||
     insert >= KVM_COALESCED_MMIO_MAX) {
  spin_unlock(&dev->kvm->ring_lock);
  return -EOPNOTSUPP;
 }



 ring->coalesced_mmio[insert].phys_addr = addr;
 ring->coalesced_mmio[insert].len = len;
 memcpy(ring->coalesced_mmio[insert].data, val, len);
 ring->coalesced_mmio[insert].pio = dev->zone.pio;
 smp_wmb();
 ring->last = (insert + 1) % KVM_COALESCED_MMIO_MAX;
 spin_unlock(&dev->kvm->ring_lock);
 return 0;
}
