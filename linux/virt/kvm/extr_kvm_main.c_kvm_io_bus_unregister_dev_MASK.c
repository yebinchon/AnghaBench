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
struct kvm_io_range {int dummy; } ;
struct kvm_io_device {int dummy; } ;
struct kvm_io_bus {int dev_count; struct kvm_io_bus* range; struct kvm_io_device* dev; } ;
struct kvm {int /*<<< orphan*/  srcu; int /*<<< orphan*/ * buses; } ;
typedef  enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_io_bus*) ; 
 struct kvm_io_bus* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kvm_io_bus* FUNC2 (struct kvm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_io_bus*,struct kvm_io_bus*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  range ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kvm_io_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_io_bus*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct kvm *kvm, enum kvm_bus bus_idx,
			       struct kvm_io_device *dev)
{
	int i;
	struct kvm_io_bus *new_bus, *bus;

	bus = FUNC2(kvm, bus_idx);
	if (!bus)
		return;

	for (i = 0; i < bus->dev_count; i++)
		if (bus->range[i].dev == dev) {
			break;
		}

	if (i == bus->dev_count)
		return;

	new_bus = FUNC1(FUNC6(bus, range, bus->dev_count - 1),
			  GFP_KERNEL_ACCOUNT);
	if (!new_bus)  {
		FUNC4("kvm: failed to shrink bus, removing it completely\n");
		goto broken;
	}

	FUNC3(new_bus, bus, sizeof(*bus) + i * sizeof(struct kvm_io_range));
	new_bus->dev_count--;
	FUNC3(new_bus->range + i, bus->range + i + 1,
	       (new_bus->dev_count - i) * sizeof(struct kvm_io_range));

broken:
	FUNC5(kvm->buses[bus_idx], new_bus);
	FUNC7(&kvm->srcu);
	FUNC0(bus);
	return;
}