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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  kvm_hyp_pgd_mutex ; 
 int FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(pgd_t *pgdp, unsigned long ptrs_per_pgd,
				 unsigned long start, unsigned long end,
				 unsigned long pfn, pgprot_t prot)
{
	pgd_t *pgd;
	pud_t *pud;
	unsigned long addr, next;
	int err = 0;

	FUNC6(&kvm_hyp_pgd_mutex);
	addr = start & PAGE_MASK;
	end = FUNC0(end);
	do {
		pgd = pgdp + FUNC4(addr, ptrs_per_pgd);

		if (FUNC9(*pgd)) {
			pud = FUNC10(NULL, addr);
			if (!pud) {
				FUNC3("Cannot allocate Hyp pud\n");
				err = -ENOMEM;
				goto out;
			}
			FUNC5(pgd, pud);
			FUNC2(FUNC11(pgd));
		}

		next = FUNC8(addr, end);
		err = FUNC1(pgd, addr, next, pfn, prot);
		if (err)
			goto out;
		pfn += (next - addr) >> PAGE_SHIFT;
	} while (addr = next, addr != end);
out:
	FUNC7(&kvm_hyp_pgd_mutex);
	return err;
}