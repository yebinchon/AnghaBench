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
struct TYPE_2__ {scalar_t__ pgd_phys; int /*<<< orphan*/ * pgd; } ;
struct kvm {int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct kvm *kvm)
{
	void *pgd = NULL;

	FUNC3(&kvm->mmu_lock);
	if (kvm->arch.pgd) {
		FUNC6(kvm, 0, FUNC2(kvm));
		pgd = FUNC0(kvm->arch.pgd);
		kvm->arch.pgd = NULL;
		kvm->arch.pgd_phys = 0;
	}
	FUNC4(&kvm->mmu_lock);

	/* Free the HW pgd, one page at a time */
	if (pgd)
		FUNC1(pgd, FUNC5(kvm));
}