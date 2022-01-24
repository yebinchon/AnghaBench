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
struct kvm_vcpu {unsigned int halt_poll_ns; int /*<<< orphan*/  vcpu_id; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  halt_poll_ns_shrink ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	unsigned int old, val, shrink;

	old = val = vcpu->halt_poll_ns;
	shrink = FUNC0(halt_poll_ns_shrink);
	if (shrink == 0)
		val = 0;
	else
		val /= shrink;

	vcpu->halt_poll_ns = val;
	FUNC1(vcpu->vcpu_id, val, old);
}