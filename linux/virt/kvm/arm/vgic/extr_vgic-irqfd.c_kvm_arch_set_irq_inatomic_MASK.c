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
struct kvm_kernel_irq_routing_entry {scalar_t__ type; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 scalar_t__ KVM_IRQ_ROUTING_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_kernel_irq_routing_entry*,struct kvm_msi*) ; 
 scalar_t__ FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,struct kvm_msi*) ; 

int FUNC3(struct kvm_kernel_irq_routing_entry *e,
			      struct kvm *kvm, int irq_source_id, int level,
			      bool line_status)
{
	if (e->type == KVM_IRQ_ROUTING_MSI && FUNC1(kvm) && level) {
		struct kvm_msi msi;

		FUNC0(e, &msi);
		if (!FUNC2(kvm, &msi))
			return 0;
	}

	return -EWOULDBLOCK;
}