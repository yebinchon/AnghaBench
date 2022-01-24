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
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PTRS_PER_PGD ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hyp_pgd ; 
 scalar_t__ FUNC3 () ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

int FUNC6(void *from, void *to, pgprot_t prot)
{
	phys_addr_t phys_addr;
	unsigned long virt_addr;
	unsigned long start = FUNC4((unsigned long)from);
	unsigned long end = FUNC4((unsigned long)to);

	if (FUNC3())
		return 0;

	start = start & PAGE_MASK;
	end = FUNC0(end);

	for (virt_addr = start; virt_addr < end; virt_addr += PAGE_SIZE) {
		int err;

		phys_addr = FUNC5(from + virt_addr - start);
		err = FUNC1(hyp_pgd, PTRS_PER_PGD,
					    virt_addr, virt_addr + PAGE_SIZE,
					    FUNC2(phys_addr),
					    prot);
		if (err)
			return err;
	}

	return 0;
}