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
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int PAGE_MASK ; 
 unsigned long PAGE_OFFSET ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ __hyp_idmap_text_end ; 
 scalar_t__ __hyp_idmap_text_start ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ __kvm_hyp_init ; 
 int /*<<< orphan*/ * boot_hyp_pgd ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ high_memory ; 
 int hyp_idmap_end ; 
 int hyp_idmap_start ; 
 void* hyp_idmap_vector ; 
 int /*<<< orphan*/ * hyp_pgd ; 
 int /*<<< orphan*/  hyp_pgd_order ; 
 int io_map_base ; 
 int FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/ * merged_hyp_pgd ; 

int FUNC13(void)
{
	int err;

	hyp_idmap_start = FUNC12(__hyp_idmap_text_start);
	hyp_idmap_start = FUNC1(hyp_idmap_start, PAGE_SIZE);
	hyp_idmap_end = FUNC12(__hyp_idmap_text_end);
	hyp_idmap_end = FUNC0(hyp_idmap_end, PAGE_SIZE);
	hyp_idmap_vector = FUNC12(__kvm_hyp_init);

	/*
	 * We rely on the linker script to ensure at build time that the HYP
	 * init code does not cross a page boundary.
	 */
	FUNC2((hyp_idmap_start ^ (hyp_idmap_end - 1)) & PAGE_MASK);

	FUNC9("IDMAP page: %lx\n", hyp_idmap_start);
	FUNC9("HYP VA range: %lx:%lx\n",
		  FUNC8(PAGE_OFFSET),
		  FUNC8((unsigned long)high_memory - 1));

	if (hyp_idmap_start >= FUNC8(PAGE_OFFSET) &&
	    hyp_idmap_start <  FUNC8((unsigned long)high_memory - 1) &&
	    hyp_idmap_start != (unsigned long)__hyp_idmap_text_start) {
		/*
		 * The idmap page is intersecting with the VA space,
		 * it is not safe to continue further.
		 */
		FUNC10("IDMAP intersecting with HYP VA, unable to continue\n");
		err = -EINVAL;
		goto out;
	}

	hyp_pgd = (pgd_t *)FUNC4(GFP_KERNEL | __GFP_ZERO, hyp_pgd_order);
	if (!hyp_pgd) {
		FUNC10("Hyp mode PGD not allocated\n");
		err = -ENOMEM;
		goto out;
	}

	if (FUNC5()) {
		boot_hyp_pgd = (pgd_t *)FUNC4(GFP_KERNEL | __GFP_ZERO,
							 hyp_pgd_order);
		if (!boot_hyp_pgd) {
			FUNC10("Hyp boot PGD not allocated\n");
			err = -ENOMEM;
			goto out;
		}

		err = FUNC11(boot_hyp_pgd);
		if (err)
			goto out;

		merged_hyp_pgd = (pgd_t *)FUNC3(GFP_KERNEL | __GFP_ZERO);
		if (!merged_hyp_pgd) {
			FUNC10("Failed to allocate extra HYP pgd\n");
			goto out;
		}
		FUNC6(boot_hyp_pgd, hyp_pgd, merged_hyp_pgd,
				    hyp_idmap_start);
	} else {
		err = FUNC11(hyp_pgd);
		if (err)
			goto out;
	}

	io_map_base = hyp_idmap_start;
	return 0;
out:
	FUNC7();
	return err;
}