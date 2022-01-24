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
 unsigned int halt_poll_ns ; 
 int /*<<< orphan*/  halt_poll_ns_grow ; 
 int /*<<< orphan*/  halt_poll_ns_grow_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	unsigned int old, val, grow, grow_start;

	old = val = vcpu->halt_poll_ns;
	grow_start = FUNC0(halt_poll_ns_grow_start);
	grow = FUNC0(halt_poll_ns_grow);
	if (!grow)
		goto out;

	val *= grow;
	if (val < grow_start)
		val = grow_start;

	if (val > halt_poll_ns)
		val = halt_poll_ns;

	vcpu->halt_poll_ns = val;
out:
	FUNC1(vcpu->vcpu_id, val, old);
}