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
typedef  int /*<<< orphan*/  u64 ;
struct vgic_io_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  base_addr; struct vgic_its* its; int /*<<< orphan*/  iodev_type; int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  regions; } ;
struct vgic_its {int /*<<< orphan*/  vgic_its_base; struct vgic_io_device iodev; } ;
struct kvm {int /*<<< orphan*/  slots_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  IODEV_ITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  KVM_VGIC_V3_ITS_SIZE ; 
 int /*<<< orphan*/  its_registers ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kvm_io_gic_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct kvm *kvm, struct vgic_its *its,
				   u64 addr)
{
	struct vgic_io_device *iodev = &its->iodev;
	int ret;

	FUNC4(&kvm->slots_lock);
	if (!FUNC1(its->vgic_its_base)) {
		ret = -EBUSY;
		goto out;
	}

	its->vgic_its_base = addr;
	iodev->regions = its_registers;
	iodev->nr_regions = FUNC0(its_registers);
	FUNC3(&iodev->dev, &kvm_io_gic_ops);

	iodev->base_addr = its->vgic_its_base;
	iodev->iodev_type = IODEV_ITS;
	iodev->its = its;
	ret = FUNC2(kvm, KVM_MMIO_BUS, iodev->base_addr,
				      KVM_VGIC_V3_ITS_SIZE, &iodev->dev);
out:
	FUNC5(&kvm->slots_lock);

	return ret;
}