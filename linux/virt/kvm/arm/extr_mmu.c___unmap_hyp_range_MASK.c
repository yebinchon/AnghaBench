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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(pgd_t *pgdp, unsigned long ptrs_per_pgd,
			      phys_addr_t start, u64 size)
{
	pgd_t *pgd;
	phys_addr_t addr = start, end = start + size;
	phys_addr_t next;

	/*
	 * We don't unmap anything from HYP, except at the hyp tear down.
	 * Hence, we don't have to invalidate the TLBs here.
	 */
	pgd = pgdp + FUNC0(addr, ptrs_per_pgd);
	do {
		next = FUNC1(addr, end);
		if (!FUNC2(*pgd))
			FUNC3(pgd, addr, next);
	} while (pgd++, addr = next, addr != end);
}