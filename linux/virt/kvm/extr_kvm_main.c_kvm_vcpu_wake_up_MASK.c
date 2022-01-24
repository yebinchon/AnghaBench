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
struct swait_queue_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  halt_wakeup; } ;
struct kvm_vcpu {TYPE_1__ stat; int /*<<< orphan*/  ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct swait_queue_head* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct swait_queue_head*) ; 
 scalar_t__ FUNC3 (struct swait_queue_head*) ; 

bool FUNC4(struct kvm_vcpu *vcpu)
{
	struct swait_queue_head *wqp;

	wqp = FUNC1(vcpu);
	if (FUNC3(wqp)) {
		FUNC2(wqp);
		FUNC0(vcpu->ready, true);
		++vcpu->stat.halt_wakeup;
		return true;
	}

	return false;
}