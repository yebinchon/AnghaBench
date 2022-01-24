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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(pud_t *pud, unsigned long start,
				   unsigned long end, unsigned long pfn,
				   pgprot_t prot)
{
	pmd_t *pmd;
	pte_t *pte;
	unsigned long addr, next;

	addr = start;
	do {
		pmd = FUNC7(pud, addr);

		FUNC0(FUNC8(*pmd));

		if (FUNC6(*pmd)) {
			pte = FUNC9(NULL);
			if (!pte) {
				FUNC3("Cannot allocate Hyp pte\n");
				return -ENOMEM;
			}
			FUNC4(pmd, pte);
			FUNC2(FUNC10(pmd));
		}

		next = FUNC5(addr, end);

		FUNC1(pmd, addr, next, pfn, prot);
		pfn += (next - addr) >> PAGE_SHIFT;
	} while (addr = next, addr != end);

	return 0;
}