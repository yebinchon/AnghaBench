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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  ent ;

/* Variables and functions */
 int HPAGE_SHIFT ; 
 int /*<<< orphan*/  HPAGE_SIZE ; 
 int /*<<< orphan*/  MADV_HUGEPAGE ; 
 int MAP_ANONYMOUS ; 
 int MAP_FIXED ; 
 int MAP_NORESERVE ; 
 int MAP_PRIVATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pagemap_fd ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,uintptr_t) ; 

int64_t FUNC7(void *ptr)
{
	uint64_t ent[2];

	/* drop pmd */
	if (FUNC5(ptr, HPAGE_SIZE, PROT_READ | PROT_WRITE,
				MAP_FIXED | MAP_ANONYMOUS |
				MAP_NORESERVE | MAP_PRIVATE, -1, 0) != ptr)
		FUNC3(2, "mmap transhuge");

	if (FUNC4(ptr, HPAGE_SIZE, MADV_HUGEPAGE))
		FUNC2(2, "MADV_HUGEPAGE");

	/* allocate transparent huge page */
	*(volatile void **)ptr = ptr;

	if (FUNC6(pagemap_fd, ent, sizeof(ent),
			(uintptr_t)ptr >> (PAGE_SHIFT - 3)) != sizeof(ent))
		FUNC2(2, "read pagemap");

	if (FUNC1(ent[0]) && FUNC1(ent[1]) &&
	    FUNC0(ent[0]) + 1 == FUNC0(ent[1]) &&
	    !(FUNC0(ent[0]) & ((1 << (HPAGE_SHIFT - PAGE_SHIFT)) - 1)))
		return FUNC0(ent[0]);

	return -1;
}