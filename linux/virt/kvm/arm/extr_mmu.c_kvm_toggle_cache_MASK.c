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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCR_TVM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/ * FUNC4 (struct kvm_vcpu*) ; 

void FUNC5(struct kvm_vcpu *vcpu, bool was_enabled)
{
	bool now_enabled = FUNC2(vcpu);

	/*
	 * If switching the MMU+caches on, need to invalidate the caches.
	 * If switching it off, need to clean the caches.
	 * Clean + invalidate does the trick always.
	 */
	if (now_enabled != was_enabled)
		FUNC0(vcpu->kvm);

	/* Caches are now on, stop trapping VM ops (until a S/W op) */
	if (now_enabled)
		*FUNC3(vcpu) &= ~HCR_TVM;

	FUNC1(*FUNC4(vcpu), was_enabled, now_enabled);
}