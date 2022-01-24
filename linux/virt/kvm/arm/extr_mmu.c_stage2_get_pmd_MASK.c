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
struct kvm_mmu_memory_cache {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct kvm_mmu_memory_cache*) ; 
 int /*<<< orphan*/ * FUNC2 (struct kvm*,struct kvm_mmu_memory_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pmd_t *FUNC8(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
			     phys_addr_t addr)
{
	pud_t *pud;
	pmd_t *pmd;

	pud = FUNC2(kvm, cache, addr);
	if (!pud || FUNC4(kvm, *pud))
		return NULL;

	if (FUNC5(kvm, *pud)) {
		if (!cache)
			return NULL;
		pmd = FUNC1(cache);
		FUNC6(kvm, pud, pmd);
		FUNC0(FUNC7(pud));
	}

	return FUNC3(kvm, pud, addr);
}