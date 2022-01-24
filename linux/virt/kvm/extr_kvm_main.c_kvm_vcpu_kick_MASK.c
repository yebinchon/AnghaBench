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
struct kvm_vcpu {int cpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	int me;
	int cpu = vcpu->cpu;

	if (FUNC3(vcpu))
		return;

	me = FUNC1();
	if (cpu != me && (unsigned)cpu < nr_cpu_ids && FUNC0(cpu))
		if (FUNC2(vcpu))
			FUNC5(cpu);
	FUNC4();
}