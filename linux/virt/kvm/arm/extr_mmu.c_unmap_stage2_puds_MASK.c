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
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct kvm*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct kvm*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct kvm *kvm, pgd_t *pgd,
		       phys_addr_t addr, phys_addr_t end)
{
	phys_addr_t next, start_addr = addr;
	pud_t *pud, *start_pud;

	start_pud = pud = FUNC8(kvm, pgd, addr);
	do {
		next = FUNC4(kvm, addr, end);
		if (!FUNC7(kvm, *pud)) {
			if (FUNC6(kvm, *pud)) {
				pud_t old_pud = *pud;

				FUNC5(kvm, pud);
				FUNC2(kvm, addr);
				FUNC1(old_pud);
				FUNC3(FUNC11(pud));
			} else {
				FUNC10(kvm, pud, addr, next);
			}
		}
	} while (pud++, addr = next, addr != end);

	if (FUNC9(kvm, start_pud))
		FUNC0(kvm, pgd, start_addr);
}