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
struct kvm_msi {int dummy; } ;
struct kvm_kernel_irq_routing_entry {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_kernel_irq_routing_entry*,struct kvm_msi*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int FUNC2 (struct kvm*,struct kvm_msi*) ; 

int FUNC3(struct kvm_kernel_irq_routing_entry *e,
		struct kvm *kvm, int irq_source_id,
		int level, bool line_status)
{
	struct kvm_msi msi;

	if (!FUNC1(kvm))
		return -ENODEV;

	if (!level)
		return -1;

	FUNC0(e, &msi);
	return FUNC2(kvm, &msi);
}