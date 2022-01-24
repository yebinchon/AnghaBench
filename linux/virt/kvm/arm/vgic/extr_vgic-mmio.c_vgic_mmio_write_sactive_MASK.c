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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef  int /*<<< orphan*/  gpa_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

void FUNC6(struct kvm_vcpu *vcpu,
			     gpa_t addr, unsigned int len,
			     unsigned long val)
{
	u32 intid = FUNC0(addr, 1);

	FUNC2(&vcpu->kvm->lock);
	FUNC5(vcpu, intid);

	FUNC1(vcpu, addr, len, val);

	FUNC4(vcpu, intid);
	FUNC3(&vcpu->kvm->lock);
}