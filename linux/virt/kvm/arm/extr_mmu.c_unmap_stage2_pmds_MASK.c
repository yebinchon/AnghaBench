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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct kvm*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (struct kvm*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct kvm *kvm, pud_t *pud,
		       phys_addr_t addr, phys_addr_t end)
{
	phys_addr_t next, start_addr = addr;
	pmd_t *pmd, *start_pmd;

	start_pmd = pmd = FUNC8(kvm, pud, addr);
	do {
		next = FUNC7(kvm, addr, end);
		if (!FUNC4(*pmd)) {
			if (FUNC5(*pmd)) {
				pmd_t old_pmd = *pmd;

				FUNC3(pmd);
				FUNC2(kvm, addr);

				FUNC1(old_pmd);

				FUNC6(FUNC11(pmd));
			} else {
				FUNC10(kvm, pmd, addr, next);
			}
		}
	} while (pmd++, addr = next, addr != end);

	if (FUNC9(kvm, start_pmd))
		FUNC0(kvm, pud, start_addr);
}