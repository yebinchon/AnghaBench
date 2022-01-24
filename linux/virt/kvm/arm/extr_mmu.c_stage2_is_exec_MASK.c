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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static bool FUNC4(struct kvm *kvm, phys_addr_t addr)
{
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep;
	bool found;

	found = FUNC3(kvm, addr, &pudp, &pmdp, &ptep);
	if (!found)
		return false;

	if (pudp)
		return FUNC2(pudp);
	else if (pmdp)
		return FUNC0(pmdp);
	else
		return FUNC1(ptep);
}