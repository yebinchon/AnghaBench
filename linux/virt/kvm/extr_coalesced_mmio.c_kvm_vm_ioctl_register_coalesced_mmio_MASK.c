#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_coalesced_mmio_zone {int pio; int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;
struct kvm_coalesced_mmio_dev {int /*<<< orphan*/  list; int /*<<< orphan*/  dev; struct kvm_coalesced_mmio_zone zone; struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  coalesced_zones; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  KVM_PIO_BUS ; 
 int /*<<< orphan*/  coalesced_mmio_ops ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_coalesced_mmio_dev*) ; 
 int FUNC1 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kvm_coalesced_mmio_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct kvm *kvm,
					 struct kvm_coalesced_mmio_zone *zone)
{
	int ret;
	struct kvm_coalesced_mmio_dev *dev;

	if (zone->pio != 1 && zone->pio != 0)
		return -EINVAL;

	dev = FUNC3(sizeof(struct kvm_coalesced_mmio_dev),
		      GFP_KERNEL_ACCOUNT);
	if (!dev)
		return -ENOMEM;

	FUNC2(&dev->dev, &coalesced_mmio_ops);
	dev->kvm = kvm;
	dev->zone = *zone;

	FUNC5(&kvm->slots_lock);
	ret = FUNC1(kvm,
				zone->pio ? KVM_PIO_BUS : KVM_MMIO_BUS,
				zone->addr, zone->size, &dev->dev);
	if (ret < 0)
		goto out_free_dev;
	FUNC4(&dev->list, &kvm->coalesced_zones);
	FUNC6(&kvm->slots_lock);

	return 0;

out_free_dev:
	FUNC6(&kvm->slots_lock);
	FUNC0(dev);

	return ret;
}