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
typedef  int gpa_t ;
typedef  int gfn_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (struct kvm_memory_slot*,int,void*,int,unsigned long) ; 
 struct kvm_memory_slot* FUNC1 (struct kvm_vcpu*,int) ; 
 int FUNC2 (int) ; 

int FUNC3(struct kvm_vcpu *vcpu, gpa_t gpa,
			       void *data, unsigned long len)
{
	gfn_t gfn = gpa >> PAGE_SHIFT;
	struct kvm_memory_slot *slot = FUNC1(vcpu, gfn);
	int offset = FUNC2(gpa);

	return FUNC0(slot, gfn, data, offset, len);
}