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
typedef  int /*<<< orphan*/  kvm_pfn_t ;

/* Variables and functions */
 int FUNC0 (unsigned long,int,int,struct page**) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static bool FUNC2(unsigned long addr, bool write_fault,
			    bool *writable, kvm_pfn_t *pfn)
{
	struct page *page[1];
	int npages;

	/*
	 * Fast pin a writable pfn only if it is a write fault request
	 * or the caller allows to map a writable pfn for a read fault
	 * request.
	 */
	if (!(write_fault || writable))
		return false;

	npages = FUNC0(addr, 1, 1, page);
	if (npages == 1) {
		*pfn = FUNC1(page[0]);

		if (writable)
			*writable = true;
		return true;
	}

	return false;
}