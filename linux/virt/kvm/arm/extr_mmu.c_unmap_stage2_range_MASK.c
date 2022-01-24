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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/ * pgd; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct kvm*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct kvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct kvm *kvm, phys_addr_t start, u64 size)
{
	pgd_t *pgd;
	phys_addr_t addr = start, end = start + size;
	phys_addr_t next;

	FUNC2(&kvm->mmu_lock);
	FUNC1(size & ~PAGE_MASK);

	pgd = kvm->arch.pgd + FUNC5(kvm, addr);
	do {
		/*
		 * Make sure the page table is still active, as another thread
		 * could have possibly freed the page table, while we released
		 * the lock.
		 */
		if (!FUNC0(kvm->arch.pgd))
			break;
		next = FUNC4(kvm, addr, end);
		if (!FUNC6(kvm, *pgd))
			FUNC7(kvm, pgd, addr, next);
		/*
		 * If the range is too large, release the kvm->mmu_lock
		 * to prevent starvation and lockup detector warnings.
		 */
		if (next != end)
			FUNC3(&kvm->mmu_lock);
	} while (pgd++, addr = next, addr != end);
}