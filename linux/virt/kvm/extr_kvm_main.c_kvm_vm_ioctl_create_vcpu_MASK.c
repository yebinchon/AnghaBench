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
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int /*<<< orphan*/  debugfs_dentry; int /*<<< orphan*/  preempt_notifier; } ;
struct kvm {scalar_t__ created_vcpus; int /*<<< orphan*/  lock; int /*<<< orphan*/  online_vcpus; struct kvm_vcpu** vcpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ KVM_MAX_VCPUS ; 
 int /*<<< orphan*/  KVM_MAX_VCPU_ID ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct kvm_vcpu* FUNC7 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm*) ; 
 scalar_t__ FUNC13 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_preempt_ops ; 
 int /*<<< orphan*/  FUNC14 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static int FUNC19(struct kvm *kvm, u32 id)
{
	int r;
	struct kvm_vcpu *vcpu;

	if (id >= KVM_MAX_VCPU_ID)
		return -EINVAL;

	FUNC15(&kvm->lock);
	if (kvm->created_vcpus == KVM_MAX_VCPUS) {
		FUNC16(&kvm->lock);
		return -EINVAL;
	}

	kvm->created_vcpus++;
	FUNC16(&kvm->lock);

	vcpu = FUNC7(kvm, id);
	if (FUNC1(vcpu)) {
		r = FUNC2(vcpu);
		goto vcpu_decrement;
	}

	FUNC17(&vcpu->preempt_notifier, &kvm_preempt_ops);

	r = FUNC10(vcpu);
	if (r)
		goto vcpu_destroy;

	FUNC11(vcpu);

	FUNC15(&kvm->lock);
	if (FUNC13(kvm, id)) {
		r = -EEXIST;
		goto unlock_vcpu_destroy;
	}

	FUNC0(kvm->vcpus[FUNC4(&kvm->online_vcpus)]);

	/* Now it's all set up, let userspace reach it */
	FUNC12(kvm);
	r = FUNC5(vcpu);
	if (r < 0) {
		FUNC14(kvm);
		goto unlock_vcpu_destroy;
	}

	kvm->vcpus[FUNC4(&kvm->online_vcpus)] = vcpu;

	/*
	 * Pairs with smp_rmb() in kvm_get_vcpu.  Write kvm->vcpus
	 * before kvm->online_vcpu's incremented value.
	 */
	FUNC18();
	FUNC3(&kvm->online_vcpus);

	FUNC16(&kvm->lock);
	FUNC9(vcpu);
	return r;

unlock_vcpu_destroy:
	FUNC16(&kvm->lock);
	FUNC6(vcpu->debugfs_dentry);
vcpu_destroy:
	FUNC8(vcpu);
vcpu_decrement:
	FUNC15(&kvm->lock);
	kvm->created_vcpus--;
	FUNC16(&kvm->lock);
	return r;
}