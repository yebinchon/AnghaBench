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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 scalar_t__ PAGE_OFFSET ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/ * boot_hyp_pgd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ high_memory ; 
 scalar_t__ hyp_idmap_start ; 
 int /*<<< orphan*/ * hyp_pgd ; 
 int /*<<< orphan*/  hyp_pgd_order ; 
 scalar_t__ io_map_base ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  kvm_hyp_pgd_mutex ; 
 int /*<<< orphan*/ * merged_hyp_pgd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC8(void)
{
	pgd_t *id_pgd;

	FUNC4(&kvm_hyp_pgd_mutex);

	id_pgd = boot_hyp_pgd ? boot_hyp_pgd : hyp_pgd;

	if (id_pgd) {
		/* In case we never called hyp_mmu_init() */
		if (!io_map_base)
			io_map_base = hyp_idmap_start;
		FUNC6(id_pgd, io_map_base,
				      hyp_idmap_start + PAGE_SIZE - io_map_base);
	}

	if (boot_hyp_pgd) {
		FUNC2((unsigned long)boot_hyp_pgd, hyp_pgd_order);
		boot_hyp_pgd = NULL;
	}

	if (hyp_pgd) {
		FUNC7(hyp_pgd, FUNC3(PAGE_OFFSET),
				(uintptr_t)high_memory - PAGE_OFFSET);

		FUNC2((unsigned long)hyp_pgd, hyp_pgd_order);
		hyp_pgd = NULL;
	}
	if (merged_hyp_pgd) {
		FUNC0(merged_hyp_pgd);
		FUNC1((unsigned long)merged_hyp_pgd);
		merged_hyp_pgd = NULL;
	}

	FUNC5(&kvm_hyp_pgd_mutex);
}