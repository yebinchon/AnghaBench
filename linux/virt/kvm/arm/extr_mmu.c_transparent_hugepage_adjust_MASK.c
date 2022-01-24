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
struct page {int dummy; } ;
typedef  unsigned long phys_addr_t ;
typedef  unsigned long kvm_pfn_t ;
typedef  unsigned long gfn_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long PMD_MASK ; 
 int PTRS_PER_PMD ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct page* FUNC5 (unsigned long) ; 

__attribute__((used)) static bool FUNC6(kvm_pfn_t *pfnp, phys_addr_t *ipap)
{
	kvm_pfn_t pfn = *pfnp;
	gfn_t gfn = *ipap >> PAGE_SHIFT;
	struct page *page = FUNC5(pfn);

	/*
	 * PageTransCompoundMap() returns true for THP and
	 * hugetlbfs. Make sure the adjustment is done only for THP
	 * pages.
	 */
	if (!FUNC0(page) && FUNC1(page)) {
		unsigned long mask;
		/*
		 * The address we faulted on is backed by a transparent huge
		 * page.  However, because we map the compound huge page and
		 * not the individual tail page, we need to transfer the
		 * refcount to the head page.  We have to be careful that the
		 * THP doesn't start to split while we are adjusting the
		 * refcounts.
		 *
		 * We are sure this doesn't happen, because mmu_notifier_retry
		 * was successful and we are holding the mmu_lock, so if this
		 * THP is trying to split, it will be blocked in the mmu
		 * notifier before touching any of the pages, specifically
		 * before being able to call __split_huge_page_refcount().
		 *
		 * We can therefore safely transfer the refcount from PG_tail
		 * to PG_head and switch the pfn from a tail page to the head
		 * page accordingly.
		 */
		mask = PTRS_PER_PMD - 1;
		FUNC2((gfn & mask) != (pfn & mask));
		if (pfn & mask) {
			*ipap &= PMD_MASK;
			FUNC4(pfn);
			pfn &= ~mask;
			FUNC3(pfn);
			*pfnp = pfn;
		}

		return true;
	}

	return false;
}