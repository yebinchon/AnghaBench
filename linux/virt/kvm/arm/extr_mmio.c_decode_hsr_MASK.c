#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sign_extend; unsigned long rt; } ;
struct TYPE_4__ {TYPE_1__ mmio_decode; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 unsigned long FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct kvm_vcpu *vcpu, bool *is_write, int *len)
{
	unsigned long rt;
	int access_size;
	bool sign_extend;

	if (FUNC3(vcpu)) {
		/* page table accesses IO mem: tell guest to fix its TTBR */
		FUNC0(vcpu, FUNC6(vcpu));
		return 1;
	}

	access_size = FUNC1(vcpu);
	if (FUNC7(access_size < 0))
		return access_size;

	*is_write = FUNC5(vcpu);
	sign_extend = FUNC4(vcpu);
	rt = FUNC2(vcpu);

	*len = access_size;
	vcpu->arch.mmio_decode.sign_extend = sign_extend;
	vcpu->arch.mmio_decode.rt = rt;

	return 0;
}