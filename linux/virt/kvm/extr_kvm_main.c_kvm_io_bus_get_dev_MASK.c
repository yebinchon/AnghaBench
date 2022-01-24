#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvm_io_device {int dummy; } ;
struct kvm_io_bus {TYPE_1__* range; } ;
struct kvm {int /*<<< orphan*/  srcu; int /*<<< orphan*/ * buses; } ;
typedef  int /*<<< orphan*/  gpa_t ;
typedef  enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;
struct TYPE_2__ {struct kvm_io_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_io_bus*,int /*<<< orphan*/ ,int) ; 
 struct kvm_io_bus* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

struct kvm_io_device *FUNC4(struct kvm *kvm, enum kvm_bus bus_idx,
					 gpa_t addr)
{
	struct kvm_io_bus *bus;
	int dev_idx, srcu_idx;
	struct kvm_io_device *iodev = NULL;

	srcu_idx = FUNC2(&kvm->srcu);

	bus = FUNC1(kvm->buses[bus_idx], &kvm->srcu);
	if (!bus)
		goto out_unlock;

	dev_idx = FUNC0(bus, addr, 1);
	if (dev_idx < 0)
		goto out_unlock;

	iodev = bus->range[dev_idx].dev;

out_unlock:
	FUNC3(&kvm->srcu, srcu_idx);

	return iodev;
}