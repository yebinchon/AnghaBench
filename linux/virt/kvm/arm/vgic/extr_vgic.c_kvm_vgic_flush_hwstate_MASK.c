#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ap_list_lock; int /*<<< orphan*/  ap_list_head; } ;
struct TYPE_3__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 

void FUNC11(struct kvm_vcpu *vcpu)
{
	FUNC1(FUNC10(vcpu));

	/*
	 * If there are no virtual interrupts active or pending for this
	 * VCPU, then there is no work to do and we can bail out without
	 * taking any lock.  There is a potential race with someone injecting
	 * interrupts to the VCPU, but it is a benign race as the VCPU will
	 * either observe the new interrupt before or after doing this check,
	 * and introducing additional synchronization mechanism doesn't change
	 * this.
	 *
	 * Note that we still need to go through the whole thing if anything
	 * can be directly injected (GICv4).
	 */
	if (FUNC4(&vcpu->arch.vgic_cpu.ap_list_head) &&
	    !FUNC9(vcpu->kvm))
		return;

	FUNC0(!FUNC3());

	if (!FUNC4(&vcpu->arch.vgic_cpu.ap_list_head)) {
		FUNC5(&vcpu->arch.vgic_cpu.ap_list_lock);
		FUNC7(vcpu);
		FUNC6(&vcpu->arch.vgic_cpu.ap_list_lock);
	}

	if (FUNC2())
		FUNC8(vcpu);
}