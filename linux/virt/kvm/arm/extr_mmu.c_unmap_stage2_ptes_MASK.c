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
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct kvm *kvm, pmd_t *pmd,
		       phys_addr_t addr, phys_addr_t end)
{
	phys_addr_t start_addr = addr;
	pte_t *pte, *start_pte;

	start_pte = pte = FUNC7(pmd, addr);
	do {
		if (!FUNC6(*pte)) {
			pte_t old_pte = *pte;

			FUNC4(pte, FUNC0(0));
			FUNC5(kvm, addr);

			/* No need to invalidate the cache for device mappings */
			if (!FUNC3(FUNC8(old_pte)))
				FUNC2(old_pte);

			FUNC9(FUNC11(pte));
		}
	} while (pte++, addr += PAGE_SIZE, addr != end);

	if (FUNC10(kvm, start_pte))
		FUNC1(kvm, pmd, start_addr);
}