#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct kvm_io_device {int dummy; } ;
struct kvm_coalesced_mmio_ring {size_t last; TYPE_1__* coalesced_mmio; } ;
struct TYPE_5__ {int /*<<< orphan*/  pio; } ;
struct kvm_coalesced_mmio_dev {TYPE_3__* kvm; TYPE_2__ zone; } ;
typedef  int /*<<< orphan*/  gpa_t ;
typedef  size_t __u32 ;
struct TYPE_6__ {int /*<<< orphan*/  ring_lock; struct kvm_coalesced_mmio_ring* coalesced_mmio_ring; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/  pio; int /*<<< orphan*/  data; int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 size_t KVM_COALESCED_MMIO_MAX ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_coalesced_mmio_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_coalesced_mmio_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct kvm_coalesced_mmio_dev* FUNC7 (struct kvm_io_device*) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu,
				struct kvm_io_device *this, gpa_t addr,
				int len, const void *val)
{
	struct kvm_coalesced_mmio_dev *dev = FUNC7(this);
	struct kvm_coalesced_mmio_ring *ring = dev->kvm->coalesced_mmio_ring;
	__u32 insert;

	if (!FUNC2(dev, addr, len))
		return -EOPNOTSUPP;

	FUNC5(&dev->kvm->ring_lock);

	insert = FUNC0(ring->last);
	if (!FUNC1(dev, insert) ||
	    insert >= KVM_COALESCED_MMIO_MAX) {
		FUNC6(&dev->kvm->ring_lock);
		return -EOPNOTSUPP;
	}

	/* copy data in first free entry of the ring */

	ring->coalesced_mmio[insert].phys_addr = addr;
	ring->coalesced_mmio[insert].len = len;
	FUNC3(ring->coalesced_mmio[insert].data, val, len);
	ring->coalesced_mmio[insert].pio = dev->zone.pio;
	FUNC4();
	ring->last = (insert + 1) % KVM_COALESCED_MMIO_MAX;
	FUNC6(&dev->kvm->ring_lock);
	return 0;
}