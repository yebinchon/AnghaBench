#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int /*<<< orphan*/  mmio_exit_user; int /*<<< orphan*/  mmio_exit_kernel; } ;
struct TYPE_5__ {unsigned long rt; } ;
struct TYPE_6__ {TYPE_1__ mmio_decode; } ;
struct kvm_vcpu {int mmio_needed; TYPE_4__ stat; TYPE_2__ arch; } ;
struct TYPE_7__ {int is_write; int len; int /*<<< orphan*/  data; int /*<<< orphan*/  phys_addr; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; TYPE_3__ mmio; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  KVM_EXIT_MMIO ; 
 int /*<<< orphan*/  KVM_MMIO_BUS ; 
 int /*<<< orphan*/  KVM_TRACE_MMIO_READ_UNSATISFIED ; 
 int /*<<< orphan*/  KVM_TRACE_MMIO_WRITE ; 
 int FUNC0 (struct kvm_vcpu*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,struct kvm_run*) ; 
 int FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,unsigned long) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,unsigned long) ; 

int FUNC11(struct kvm_vcpu *vcpu, struct kvm_run *run,
		 phys_addr_t fault_ipa)
{
	unsigned long data;
	unsigned long rt;
	int ret;
	bool is_write;
	int len;
	u8 data_buf[8];

	/*
	 * Prepare MMIO operation. First decode the syndrome data we get
	 * from the CPU. Then try if some in-kernel emulation feels
	 * responsible, otherwise let user space do its magic.
	 */
	if (FUNC6(vcpu)) {
		ret = FUNC0(vcpu, &is_write, &len);
		if (ret)
			return ret;
	} else {
		FUNC1("load/store instruction decoding not implemented\n");
		return -ENOSYS;
	}

	rt = vcpu->arch.mmio_decode.rt;

	if (is_write) {
		data = FUNC9(vcpu, FUNC10(vcpu, rt),
					       len);

		FUNC8(KVM_TRACE_MMIO_WRITE, len, fault_ipa, &data);
		FUNC5(data_buf, len, data);

		ret = FUNC4(vcpu, KVM_MMIO_BUS, fault_ipa, len,
				       data_buf);
	} else {
		FUNC8(KVM_TRACE_MMIO_READ_UNSATISFIED, len,
			       fault_ipa, NULL);

		ret = FUNC3(vcpu, KVM_MMIO_BUS, fault_ipa, len,
				      data_buf);
	}

	/* Now prepare kvm_run for the potential return to userland. */
	run->mmio.is_write	= is_write;
	run->mmio.phys_addr	= fault_ipa;
	run->mmio.len		= len;
	vcpu->mmio_needed	= 1;

	if (!ret) {
		/* We handled the access successfully in the kernel. */
		if (!is_write)
			FUNC7(run->mmio.data, data_buf, len);
		vcpu->stat.mmio_exit_kernel++;
		FUNC2(vcpu, run);
		return 1;
	}

	if (is_write)
		FUNC7(run->mmio.data, data_buf, len);
	vcpu->stat.mmio_exit_user++;
	run->exit_reason	= KVM_EXIT_MMIO;
	return 0;
}