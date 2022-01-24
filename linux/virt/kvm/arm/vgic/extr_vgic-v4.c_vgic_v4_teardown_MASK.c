#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct its_vm {int nr_vpes; TYPE_3__** vpes; } ;
struct TYPE_4__ {struct its_vm its_vm; } ;
struct TYPE_5__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_6__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB_IRQ_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_vm*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 struct kvm_vcpu* FUNC4 (struct kvm*,int) ; 

void FUNC5(struct kvm *kvm)
{
	struct its_vm *its_vm = &kvm->arch.vgic.its_vm;
	int i;

	if (!its_vm->vpes)
		return;

	for (i = 0; i < its_vm->nr_vpes; i++) {
		struct kvm_vcpu *vcpu = FUNC4(kvm, i);
		int irq = its_vm->vpes[i]->irq;

		FUNC1(irq, DB_IRQ_FLAGS);
		FUNC0(irq, vcpu);
	}

	FUNC2(its_vm);
	FUNC3(its_vm->vpes);
	its_vm->nr_vpes = 0;
	its_vm->vpes = NULL;
}