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
struct kvm_vcpu {int dummy; } ;
struct kvm_io_range {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct kvm_io_bus {int dev_count; TYPE_1__* range; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct kvm_io_range*,TYPE_1__*) ; 
 int FUNC1 (struct kvm_io_bus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu, struct kvm_io_bus *bus,
			      struct kvm_io_range *range, const void *val)
{
	int idx;

	idx = FUNC1(bus, range->addr, range->len);
	if (idx < 0)
		return -EOPNOTSUPP;

	while (idx < bus->dev_count &&
		FUNC0(range, &bus->range[idx]) == 0) {
		if (!FUNC2(vcpu, bus->range[idx].dev, range->addr,
					range->len, val))
			return idx;
		idx++;
	}

	return -EOPNOTSUPP;
}