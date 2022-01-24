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
struct kvm_vcpu {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int FUNC0 (struct kvm_memory_slot*,int /*<<< orphan*/ ,void const*,int,int) ; 
 struct kvm_memory_slot* FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

int FUNC2(struct kvm_vcpu *vcpu, gfn_t gfn,
			      const void *data, int offset, int len)
{
	struct kvm_memory_slot *slot = FUNC1(vcpu, gfn);

	return FUNC0(slot, gfn, data, offset, len);
}