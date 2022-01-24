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
struct TYPE_2__ {int /*<<< orphan*/  pgd; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_S2 ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_set_spte_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

int FUNC5(struct kvm *kvm, unsigned long hva, pte_t pte)
{
	unsigned long end = hva + PAGE_SIZE;
	kvm_pfn_t pfn = FUNC3(pte);
	pte_t stage2_pte;

	if (!kvm->arch.pgd)
		return 0;

	FUNC4(hva);

	/*
	 * We've moved a page around, probably through CoW, so let's treat it
	 * just like a translation fault and clean the cache to the PoC.
	 */
	FUNC0(pfn, PAGE_SIZE);
	stage2_pte = FUNC2(pfn, PAGE_S2);
	FUNC1(kvm, hva, end, &kvm_set_spte_handler, &stage2_pte);

	return 0;
}