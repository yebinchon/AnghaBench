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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kvm*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct kvm*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void  FUNC7(struct kvm *kvm, pgd_t *pgd,
			    phys_addr_t addr, phys_addr_t end)
{
	pud_t *pud;
	phys_addr_t next;

	pud = FUNC5(kvm, pgd, addr);
	do {
		next = FUNC2(kvm, addr, end);
		if (!FUNC4(kvm, *pud)) {
			if (FUNC3(kvm, *pud)) {
				if (!FUNC0(pud))
					FUNC1(pud);
			} else {
				FUNC6(kvm, pud, addr, next);
			}
		}
	} while (pud++, addr = next, addr != end);
}