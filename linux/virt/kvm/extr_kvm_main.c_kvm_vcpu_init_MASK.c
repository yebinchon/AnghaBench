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
struct page {int dummy; } ;
struct kvm_vcpu {int cpu; unsigned int vcpu_id; int pre_pcpu; int preempted; int ready; scalar_t__ run; int /*<<< orphan*/  blocked_vcpu_list; int /*<<< orphan*/  wq; int /*<<< orphan*/ * pid; struct kvm* kvm; int /*<<< orphan*/  mutex; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int __GFP_ZERO ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct page*) ; 

int FUNC10(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
{
	struct page *page;
	int r;

	FUNC8(&vcpu->mutex);
	vcpu->cpu = -1;
	vcpu->kvm = kvm;
	vcpu->vcpu_id = id;
	vcpu->pid = NULL;
	FUNC3(&vcpu->wq);
	FUNC5(vcpu);

	vcpu->pre_pcpu = -1;
	FUNC0(&vcpu->blocked_vcpu_list);

	page = FUNC1(GFP_KERNEL | __GFP_ZERO);
	if (!page) {
		r = -ENOMEM;
		goto fail;
	}
	vcpu->run = FUNC9(page);

	FUNC7(vcpu, false);
	FUNC6(vcpu, false);
	vcpu->preempted = false;
	vcpu->ready = false;

	r = FUNC4(vcpu);
	if (r < 0)
		goto fail_free_run;
	return 0;

fail_free_run:
	FUNC2((unsigned long)vcpu->run);
fail:
	return r;
}