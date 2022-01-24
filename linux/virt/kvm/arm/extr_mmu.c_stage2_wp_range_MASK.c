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
struct TYPE_2__ {int /*<<< orphan*/ * pgd; } ;
struct kvm {TYPE_1__ arch; int /*<<< orphan*/  mmu_lock; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct kvm*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct kvm*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm, phys_addr_t addr, phys_addr_t end)
{
	pgd_t *pgd;
	phys_addr_t next;

	pgd = kvm->arch.pgd + FUNC3(kvm, addr);
	do {
		/*
		 * Release kvm_mmu_lock periodically if the memory region is
		 * large. Otherwise, we may see kernel panics with
		 * CONFIG_DETECT_HUNG_TASK, CONFIG_LOCKUP_DETECTOR,
		 * CONFIG_LOCKDEP. Additionally, holding the lock too long
		 * will also starve other vCPUs. We have to also make sure
		 * that the page tables are not freed while we released
		 * the lock.
		 */
		FUNC1(&kvm->mmu_lock);
		if (!FUNC0(kvm->arch.pgd))
			break;
		next = FUNC2(kvm, addr, end);
		if (FUNC4(kvm, *pgd))
			FUNC5(kvm, pgd, addr, next);
	} while (pgd++, addr = next, addr != end);
}