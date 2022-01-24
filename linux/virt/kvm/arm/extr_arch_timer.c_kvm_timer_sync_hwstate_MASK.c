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
struct arch_timer_cpu {int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 struct arch_timer_cpu* FUNC3 (struct kvm_vcpu*) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	struct arch_timer_cpu *timer = FUNC3(vcpu);

	if (FUNC1(!timer->enabled))
		return;

	if (FUNC1(!FUNC0(vcpu->kvm)))
		FUNC2(vcpu);
}