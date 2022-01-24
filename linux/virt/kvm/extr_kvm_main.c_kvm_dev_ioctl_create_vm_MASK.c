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
struct kvm {int dummy; } ;
typedef  struct kvm file ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kvm*) ; 
 int /*<<< orphan*/  KVM_EVENT_CREATE_VM ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC1 (struct kvm*) ; 
 struct kvm* FUNC2 (char*,int /*<<< orphan*/ *,struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kvm*) ; 
 struct kvm* FUNC7 (unsigned long) ; 
 scalar_t__ FUNC8 (struct kvm*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct kvm*) ; 
 int /*<<< orphan*/  kvm_vm_fops ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(unsigned long type)
{
	int r;
	struct kvm *kvm;
	struct file *file;

	kvm = FUNC7(type);
	if (FUNC0(kvm))
		return FUNC1(kvm);
#ifdef CONFIG_KVM_MMIO
	r = kvm_coalesced_mmio_init(kvm);
	if (r < 0)
		goto put_kvm;
#endif
	r = FUNC5(O_CLOEXEC);
	if (r < 0)
		goto put_kvm;

	file = FUNC2("kvm-vm", &kvm_vm_fops, kvm, O_RDWR);
	if (FUNC0(file)) {
		FUNC11(r);
		r = FUNC1(file);
		goto put_kvm;
	}

	/*
	 * Don't call kvm_put_kvm anymore at this point; file->f_op is
	 * already set, with ->release() being kvm_vm_release().  In error
	 * cases it will be called by the final fput(file) and will take
	 * care of doing kvm_put_kvm(kvm).
	 */
	if (FUNC8(kvm, r) < 0) {
		FUNC11(r);
		FUNC4(file);
		return -ENOMEM;
	}
	FUNC10(KVM_EVENT_CREATE_VM, kvm);

	FUNC3(r, file);
	return r;

put_kvm:
	FUNC9(kvm);
	return r;
}