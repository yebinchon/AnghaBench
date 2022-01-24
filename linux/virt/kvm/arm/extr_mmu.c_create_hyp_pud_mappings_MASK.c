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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(pgd_t *pgd, unsigned long start,
				   unsigned long end, unsigned long pfn,
				   pgprot_t prot)
{
	pud_t *pud;
	pmd_t *pmd;
	unsigned long addr, next;
	int ret;

	addr = start;
	do {
		pud = FUNC7(pgd, addr);

		if (FUNC6(pud)) {
			pmd = FUNC4(NULL, addr);
			if (!pmd) {
				FUNC2("Cannot allocate Hyp pmd\n");
				return -ENOMEM;
			}
			FUNC3(pud, pmd);
			FUNC1(FUNC8(pud));
		}

		next = FUNC5(addr, end);
		ret = FUNC0(pud, addr, next, pfn, prot);
		if (ret)
			return ret;
		pfn += (next - addr) >> PAGE_SHIFT;
	} while (addr = next, addr != end);

	return 0;
}