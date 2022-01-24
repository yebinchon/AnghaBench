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
struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;
struct its_ite {int /*<<< orphan*/  irq; TYPE_1__* collection; } ;
struct TYPE_2__ {int /*<<< orphan*/  target_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct kvm_vcpu* FUNC1 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC3(struct kvm *kvm, struct its_ite *ite)
{
	struct kvm_vcpu *vcpu;

	if (!FUNC0(ite->collection))
		return;

	vcpu = FUNC1(kvm, ite->collection->target_addr);
	FUNC2(ite->irq, vcpu);
}