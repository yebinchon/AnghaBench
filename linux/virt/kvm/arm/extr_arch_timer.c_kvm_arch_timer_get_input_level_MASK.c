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
struct TYPE_2__ {int irq; } ;
struct arch_timer_context {TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct kvm_vcpu* FUNC1 () ; 
 int FUNC2 (struct arch_timer_context*) ; 
 struct arch_timer_context* FUNC3 (struct kvm_vcpu*) ; 
 struct arch_timer_context* FUNC4 (struct kvm_vcpu*) ; 

bool FUNC5(int vintid)
{
	struct kvm_vcpu *vcpu = FUNC1();
	struct arch_timer_context *timer;

	if (vintid == FUNC4(vcpu)->irq.irq)
		timer = FUNC4(vcpu);
	else if (vintid == FUNC3(vcpu)->irq.irq)
		timer = FUNC3(vcpu);
	else
		FUNC0();

	return FUNC2(timer);
}