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
typedef  unsigned long u32 ;
struct vcpu_reset_state {int /*<<< orphan*/  reset; int /*<<< orphan*/  r0; int /*<<< orphan*/  be; int /*<<< orphan*/  pc; } ;
struct TYPE_2__ {int power_off; struct vcpu_reset_state reset_state; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 scalar_t__ KVM_ARM_PSCI_0_1 ; 
 int /*<<< orphan*/  KVM_REQ_VCPU_RESET ; 
 unsigned long MPIDR_HWID_BITMASK ; 
 unsigned long PSCI_RET_ALREADY_ON ; 
 unsigned long PSCI_RET_INVALID_PARAMS ; 
 unsigned long PSCI_RET_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 struct kvm_vcpu* FUNC2 (struct kvm*,unsigned long) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 unsigned long FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*) ; 

__attribute__((used)) static unsigned long FUNC11(struct kvm_vcpu *source_vcpu)
{
	struct vcpu_reset_state *reset_state;
	struct kvm *kvm = source_vcpu->kvm;
	struct kvm_vcpu *vcpu = NULL;
	unsigned long cpu_id;

	cpu_id = FUNC6(source_vcpu) & MPIDR_HWID_BITMASK;
	if (FUNC10(source_vcpu))
		cpu_id &= ~((u32) 0);

	vcpu = FUNC2(kvm, cpu_id);

	/*
	 * Make sure the caller requested a valid CPU and that the CPU is
	 * turned off.
	 */
	if (!vcpu)
		return PSCI_RET_INVALID_PARAMS;
	if (!vcpu->arch.power_off) {
		if (FUNC3(source_vcpu, kvm) != KVM_ARM_PSCI_0_1)
			return PSCI_RET_ALREADY_ON;
		else
			return PSCI_RET_INVALID_PARAMS;
	}

	reset_state = &vcpu->arch.reset_state;

	reset_state->pc = FUNC7(source_vcpu);

	/* Propagate caller endianness */
	reset_state->be = FUNC4(source_vcpu);

	/*
	 * NOTE: We always update r0 (or x0) because for PSCI v0.1
	 * the general puspose registers are undefined upon CPU_ON.
	 */
	reset_state->r0 = FUNC8(source_vcpu);

	FUNC0(reset_state->reset, true);
	FUNC1(KVM_REQ_VCPU_RESET, vcpu);

	/*
	 * Make sure the reset request is observed if the change to
	 * power_state is observed.
	 */
	FUNC9();

	vcpu->arch.power_off = false;
	FUNC5(vcpu);

	return PSCI_RET_SUCCESS;
}