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
 int /*<<< orphan*/  PAGE_HYP_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hyp_idmap_end ; 
 int /*<<< orphan*/  hyp_idmap_start ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(pgd_t *pgd)
{
	int err;

	/* Create the idmap in the boot page tables */
	err = 	FUNC0(pgd, FUNC1(),
				      hyp_idmap_start, hyp_idmap_end,
				      FUNC2(hyp_idmap_start),
				      PAGE_HYP_EXEC);
	if (err)
		FUNC3("Failed to idmap %lx-%lx\n",
			hyp_idmap_start, hyp_idmap_end);

	return err;
}