#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  kvm_pfn_t ;
struct TYPE_2__ {int /*<<< orphan*/  mmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa)
{
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	kvm_pfn_t pfn;
	bool pfn_valid = false;

	FUNC10(fault_ipa);

	FUNC7(&vcpu->kvm->mmu_lock);

	if (!FUNC9(vcpu->kvm, fault_ipa, &pud, &pmd, &pte))
		goto out;

	if (pud) {		/* HugeTLB */
		*pud = FUNC1(*pud);
		pfn = FUNC0(*pud);
		pfn_valid = true;
	} else	if (pmd) {	/* THP, HugeTLB */
		*pmd = FUNC3(*pmd);
		pfn = FUNC4(*pmd);
		pfn_valid = true;
	} else {
		*pte = FUNC5(*pte);	/* Just a page... */
		pfn = FUNC6(*pte);
		pfn_valid = true;
	}

out:
	FUNC8(&vcpu->kvm->mmu_lock);
	if (pfn_valid)
		FUNC2(pfn);
}