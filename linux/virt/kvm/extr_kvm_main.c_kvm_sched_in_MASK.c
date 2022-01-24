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
struct preempt_notifier {int dummy; } ;
struct kvm_vcpu {int /*<<< orphan*/  ready; int /*<<< orphan*/  preempted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 struct kvm_vcpu* FUNC3 (struct preempt_notifier*) ; 

__attribute__((used)) static void FUNC4(struct preempt_notifier *pn, int cpu)
{
	struct kvm_vcpu *vcpu = FUNC3(pn);

	FUNC0(vcpu->preempted, false);
	FUNC0(vcpu->ready, false);

	FUNC1(vcpu, cpu);

	FUNC2(vcpu, cpu);
}