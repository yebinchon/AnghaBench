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
struct vgic_its {int /*<<< orphan*/  its_lock; } ;
struct vgic_irq {int hw; int host_irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  devid; } ;
struct kvm_kernel_irq_routing_entry {TYPE_1__ msi; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vgic_its*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vgic_its* FUNC5 (struct kvm*,struct kvm_kernel_irq_routing_entry*) ; 
 int FUNC6 (struct kvm*,struct vgic_its*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vgic_irq**) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*) ; 

int FUNC8(struct kvm *kvm, int virq,
				 struct kvm_kernel_irq_routing_entry *irq_entry)
{
	struct vgic_its *its;
	struct vgic_irq *irq;
	int ret;

	if (!FUNC7(kvm))
		return 0;

	/*
	 * Get the ITS, and escape early on error (not a valid
	 * doorbell for any of our vITSs).
	 */
	its = FUNC5(kvm, irq_entry);
	if (FUNC0(its))
		return 0;

	FUNC3(&its->its_lock);

	ret = FUNC6(kvm, its, irq_entry->msi.devid,
				   irq_entry->msi.data, &irq);
	if (ret)
		goto out;

	FUNC1(!(irq->hw && irq->host_irq == virq));
	if (irq->hw) {
		irq->hw = false;
		ret = FUNC2(virq);
	}

out:
	FUNC4(&its->its_lock);
	return ret;
}