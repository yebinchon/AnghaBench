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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct kvm *kvm, phys_addr_t addr,
				  pud_t **pudpp, pmd_t **pmdpp, pte_t **ptepp)
{
	pud_t *pudp;
	pmd_t *pmdp;
	pte_t *ptep;

	*pudpp = NULL;
	*pmdpp = NULL;
	*ptepp = NULL;

	pudp = FUNC6(kvm, NULL, addr);
	if (!pudp || FUNC9(kvm, *pudp) || !FUNC10(kvm, *pudp))
		return false;

	if (FUNC8(kvm, *pudp)) {
		*pudpp = pudp;
		return true;
	}

	pmdp = FUNC7(kvm, pudp, addr);
	if (!pmdp || FUNC0(*pmdp) || !FUNC1(*pmdp))
		return false;

	if (FUNC2(*pmdp)) {
		*pmdpp = pmdp;
		return true;
	}

	ptep = FUNC4(pmdp, addr);
	if (!ptep || FUNC3(*ptep) || !FUNC5(*ptep))
		return false;

	*ptepp = ptep;
	return true;
}