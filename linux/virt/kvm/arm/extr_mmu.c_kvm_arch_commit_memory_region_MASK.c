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
struct kvm_userspace_memory_region {int flags; int /*<<< orphan*/  slot; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef  enum kvm_mr_change { ____Placeholder_kvm_mr_change } kvm_mr_change ;

/* Variables and functions */
 int KVM_MEM_LOG_DIRTY_PAGES ; 
 int KVM_MR_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ ) ; 

void FUNC1(struct kvm *kvm,
				   const struct kvm_userspace_memory_region *mem,
				   const struct kvm_memory_slot *old,
				   const struct kvm_memory_slot *new,
				   enum kvm_mr_change change)
{
	/*
	 * At this point memslot has been committed and there is an
	 * allocated dirty_bitmap[], dirty pages will be be tracked while the
	 * memory slot is write protected.
	 */
	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
		FUNC0(kvm, mem->slot);
}