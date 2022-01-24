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
struct kvm {int dummy; } ;
struct its_ite {TYPE_1__* irq; int /*<<< orphan*/  ite_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_irq; scalar_t__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_ite*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct kvm *kvm, struct its_ite *ite)
{
	FUNC3(&ite->ite_list);

	/* This put matches the get in vgic_add_lpi. */
	if (ite->irq) {
		if (ite->irq->hw)
			FUNC0(FUNC1(ite->irq->host_irq));

		FUNC4(kvm, ite->irq);
	}

	FUNC2(ite);
}