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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 int ENOMEM ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ VA_BITS ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * boot_hyp_pgd ; 
 int /*<<< orphan*/ * hyp_pgd ; 
 size_t io_map_base ; 
 int /*<<< orphan*/  kvm_hyp_pgd_mutex ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(phys_addr_t phys_addr, size_t size,
					unsigned long *haddr, pgprot_t prot)
{
	pgd_t *pgd = hyp_pgd;
	unsigned long base;
	int ret = 0;

	FUNC6(&kvm_hyp_pgd_mutex);

	/*
	 * This assumes that we we have enough space below the idmap
	 * page to allocate our VAs. If not, the check below will
	 * kick. A potential alternative would be to detect that
	 * overflow and switch to an allocation above the idmap.
	 *
	 * The allocated size is always a multiple of PAGE_SIZE.
	 */
	size = FUNC1(size + FUNC8(phys_addr));
	base = io_map_base - size;

	/*
	 * Verify that BIT(VA_BITS - 1) hasn't been flipped by
	 * allocating the new area, as it would indicate we've
	 * overflowed the idmap/IO address range.
	 */
	if ((base ^ io_map_base) & FUNC0(VA_BITS - 1))
		ret = -ENOMEM;
	else
		io_map_base = base;

	FUNC7(&kvm_hyp_pgd_mutex);

	if (ret)
		goto out;

	if (FUNC3())
		pgd = boot_hyp_pgd;

	ret = FUNC2(pgd, FUNC4(),
				    base, base + size,
				    FUNC5(phys_addr), prot);
	if (ret)
		goto out;

	*haddr = base + FUNC8(phys_addr);

out:
	return ret;
}