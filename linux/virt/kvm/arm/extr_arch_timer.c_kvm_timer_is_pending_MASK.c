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
struct timer_map {int /*<<< orphan*/  emul_ptimer; int /*<<< orphan*/  direct_ptimer; int /*<<< orphan*/  direct_vtimer; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,struct timer_map*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(struct kvm_vcpu *vcpu)
{
	struct timer_map map;

	FUNC0(vcpu, &map);

	return FUNC1(map.direct_vtimer) ||
	       FUNC1(map.direct_ptimer) ||
	       FUNC1(map.emul_ptimer);
}