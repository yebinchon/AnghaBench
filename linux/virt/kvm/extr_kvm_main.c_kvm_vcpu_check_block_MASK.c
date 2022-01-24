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
struct kvm_vcpu {TYPE_1__* kvm; } ;
struct TYPE_2__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu)
{
	int ret = -EINTR;
	int idx = FUNC4(&vcpu->kvm->srcu);

	if (FUNC0(vcpu)) {
		FUNC2(KVM_REQ_UNHALT, vcpu);
		goto out;
	}
	if (FUNC1(vcpu))
		goto out;
	if (FUNC3(current))
		goto out;

	ret = 0;
out:
	FUNC5(&vcpu->kvm->srcu, idx);
	return ret;
}