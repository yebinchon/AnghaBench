#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {TYPE_1__* kvm; } ;
struct kvm_run {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef  int phys_addr_t ;
typedef  int gfn_t ;
struct TYPE_3__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int EFAULT ; 
 unsigned long FSC_ACCESS ; 
 unsigned long FSC_FAULT ; 
 unsigned long FSC_PERM ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (struct kvm_memory_slot*,int,int*) ; 
 struct kvm_memory_slot* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int) ; 
 int FUNC4 (struct kvm_vcpu*,struct kvm_run*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC9 (unsigned long) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC14 (struct kvm_vcpu*) ; 
 int FUNC15 (struct kvm_vcpu*) ; 
 int FUNC16 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC17 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC19 (struct kvm_vcpu*) ; 
 unsigned long FUNC20 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*) ; 
 int FUNC22 (struct kvm_vcpu*) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC26 (int) ; 
 int FUNC27 (struct kvm_vcpu*,int,struct kvm_memory_slot*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC28 (struct kvm_vcpu*) ; 

int FUNC29(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
	unsigned long fault_status;
	phys_addr_t fault_ipa;
	struct kvm_memory_slot *memslot;
	unsigned long hva;
	bool is_iabt, write_fault, writable;
	gfn_t gfn;
	int ret, idx;

	fault_status = FUNC20(vcpu);

	fault_ipa = FUNC15(vcpu);
	is_iabt = FUNC22(vcpu);

	/* Synchronous External Abort? */
	if (FUNC14(vcpu)) {
		/*
		 * For RAS the host kernel may handle this abort.
		 * There is no need to pass the error into the guest.
		 */
		if (!FUNC6(fault_ipa, FUNC17(vcpu)))
			return 1;

		if (FUNC26(!is_iabt)) {
			FUNC8(vcpu);
			return 1;
		}
	}

	FUNC25(*FUNC28(vcpu), FUNC17(vcpu),
			      FUNC16(vcpu), fault_ipa);

	/* Check the stage-2 fault is trans. fault or write fault */
	if (fault_status != FSC_FAULT && fault_status != FSC_PERM &&
	    fault_status != FSC_ACCESS) {
		FUNC5("Unsupported FSC: EC=%#x xFSC=%#lx ESR_EL2=%#lx\n",
			FUNC18(vcpu),
			(unsigned long)FUNC19(vcpu),
			(unsigned long)FUNC17(vcpu));
		return -EFAULT;
	}

	idx = FUNC23(&vcpu->kvm->srcu);

	gfn = fault_ipa >> PAGE_SHIFT;
	memslot = FUNC2(vcpu->kvm, gfn);
	hva = FUNC1(memslot, gfn, &writable);
	write_fault = FUNC10(vcpu);
	if (FUNC9(hva) || (write_fault && !writable)) {
		if (is_iabt) {
			/* Prefetch Abort on I/O address */
			FUNC7(vcpu, FUNC16(vcpu));
			ret = 1;
			goto out_unlock;
		}

		/*
		 * Check for a cache maintenance operation. Since we
		 * ended-up here, we know it is outside of any memory
		 * slot. But we can't find out if that is for a device,
		 * or if the guest is just being stupid. The only thing
		 * we know for sure is that this range cannot be cached.
		 *
		 * So let's assume that the guest is just being
		 * cautious, and skip the instruction.
		 */
		if (FUNC13(vcpu)) {
			FUNC12(vcpu, FUNC21(vcpu));
			ret = 1;
			goto out_unlock;
		}

		/*
		 * The IPA is reported as [MAX:12], so we need to
		 * complement it with the bottom 12 bits from the
		 * faulting VA. This is always 12 bits, irrespective
		 * of the page size.
		 */
		fault_ipa |= FUNC16(vcpu) & ((1 << 12) - 1);
		ret = FUNC4(vcpu, run, fault_ipa);
		goto out_unlock;
	}

	/* Userspace should not be able to register out-of-bounds IPAs */
	FUNC0(fault_ipa >= FUNC11(vcpu->kvm));

	if (fault_status == FSC_ACCESS) {
		FUNC3(vcpu, fault_ipa);
		ret = 1;
		goto out_unlock;
	}

	ret = FUNC27(vcpu, fault_ipa, memslot, hva, fault_status);
	if (ret == 0)
		ret = 1;
out_unlock:
	FUNC24(&vcpu->kvm->srcu, idx);
	return ret;
}