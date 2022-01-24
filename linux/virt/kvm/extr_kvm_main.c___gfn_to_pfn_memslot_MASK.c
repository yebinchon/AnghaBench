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
struct kvm_memory_slot {int dummy; } ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 unsigned long KVM_HVA_ERR_RO_BAD ; 
 int /*<<< orphan*/  KVM_PFN_ERR_RO_FAULT ; 
 int /*<<< orphan*/  KVM_PFN_NOSLOT ; 
 unsigned long FUNC0 (struct kvm_memory_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int,int*,int,int*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct kvm_memory_slot*) ; 

kvm_pfn_t FUNC4(struct kvm_memory_slot *slot, gfn_t gfn,
			       bool atomic, bool *async, bool write_fault,
			       bool *writable)
{
	unsigned long addr = FUNC0(slot, gfn, NULL, write_fault);

	if (addr == KVM_HVA_ERR_RO_BAD) {
		if (writable)
			*writable = false;
		return KVM_PFN_ERR_RO_FAULT;
	}

	if (FUNC2(addr)) {
		if (writable)
			*writable = false;
		return KVM_PFN_NOSLOT;
	}

	/* Do not map writable pfn in the readonly memslot. */
	if (writable && FUNC3(slot)) {
		*writable = false;
		writable = NULL;
	}

	return FUNC1(addr, atomic, async, write_fault,
			  writable);
}