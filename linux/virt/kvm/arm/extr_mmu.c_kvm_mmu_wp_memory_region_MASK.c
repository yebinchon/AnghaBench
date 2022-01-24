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
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int base_gfn; int npages; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 struct kvm_memory_slot* FUNC0 (struct kvm_memslots*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 struct kvm_memslots* FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,int,int) ; 

void FUNC6(struct kvm *kvm, int slot)
{
	struct kvm_memslots *slots = FUNC2(kvm);
	struct kvm_memory_slot *memslot = FUNC0(slots, slot);
	phys_addr_t start = memslot->base_gfn << PAGE_SHIFT;
	phys_addr_t end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;

	FUNC3(&kvm->mmu_lock);
	FUNC5(kvm, start, end);
	FUNC4(&kvm->mmu_lock);
	FUNC1(kvm);
}