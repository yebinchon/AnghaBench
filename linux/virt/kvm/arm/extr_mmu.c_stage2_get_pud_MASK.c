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
struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pgd; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct kvm_mmu_memory_cache*) ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct kvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pud_t *FUNC7(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
			     phys_addr_t addr)
{
	pgd_t *pgd;
	pud_t *pud;

	pgd = kvm->arch.pgd + FUNC2(kvm, addr);
	if (FUNC3(kvm, *pgd)) {
		if (!cache)
			return NULL;
		pud = FUNC1(cache);
		FUNC4(kvm, pgd, pud);
		FUNC0(FUNC6(pgd));
	}

	return FUNC5(kvm, pgd, addr);
}