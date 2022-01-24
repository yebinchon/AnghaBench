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
 unsigned int FOLL_HWPOISON ; 
 unsigned int FOLL_NOWAIT ; 
 unsigned int FOLL_WRITE ; 
 int FUNC0 (unsigned long,int,int,struct page**) ; 
 int FUNC1 (unsigned long,int,struct page**,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(unsigned long addr, bool *async, bool write_fault,
			   bool *writable, kvm_pfn_t *pfn)
{
	unsigned int flags = FOLL_HWPOISON;
	struct page *page;
	int npages = 0;

	FUNC2();

	if (writable)
		*writable = write_fault;

	if (write_fault)
		flags |= FOLL_WRITE;
	if (async)
		flags |= FOLL_NOWAIT;

	npages = FUNC1(addr, 1, &page, flags);
	if (npages != 1)
		return npages;

	/* map read fault as writable if possible */
	if (FUNC5(!write_fault) && writable) {
		struct page *wpage;

		if (FUNC0(addr, 1, 1, &wpage) == 1) {
			*writable = true;
			FUNC4(page);
			page = wpage;
		}
	}
	*pfn = FUNC3(page);
	return npages;
}