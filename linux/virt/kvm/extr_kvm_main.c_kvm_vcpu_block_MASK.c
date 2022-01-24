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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int /*<<< orphan*/  halt_poll_invalid; int /*<<< orphan*/  halt_successful_poll; int /*<<< orphan*/  halt_attempted_poll; } ;
struct kvm_vcpu {scalar_t__ halt_poll_ns; int /*<<< orphan*/  wq; TYPE_1__ stat; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ halt_poll_ns ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  wait ; 

void FUNC18(struct kvm_vcpu *vcpu)
{
	ktime_t start, cur;
	FUNC0(wait);
	bool waited = false;
	u64 block_ns;

	FUNC9(vcpu);

	start = cur = FUNC5();
	if (vcpu->halt_poll_ns && !FUNC7(vcpu)) {
		ktime_t stop = FUNC3(FUNC5(), vcpu->halt_poll_ns);

		++vcpu->stat.halt_attempted_poll;
		do {
			/*
			 * This sets KVM_REQ_UNHALT if an interrupt
			 * arrives.
			 */
			if (FUNC11(vcpu) < 0) {
				++vcpu->stat.halt_successful_poll;
				if (!FUNC17(vcpu))
					++vcpu->stat.halt_poll_invalid;
				goto out;
			}
			cur = FUNC5();
		} while (FUNC15() && FUNC4(cur, stop));
	}

	for (;;) {
		FUNC12(&vcpu->wq, &wait, TASK_INTERRUPTIBLE);

		if (FUNC11(vcpu) < 0)
			break;

		waited = true;
		FUNC13();
	}

	FUNC1(&vcpu->wq, &wait);
	cur = FUNC5();
out:
	FUNC10(vcpu);
	block_ns = FUNC6(cur) - FUNC6(start);

	if (!FUNC7(vcpu)) {
		if (!FUNC17(vcpu)) {
			FUNC14(vcpu);
		} else if (halt_poll_ns) {
			if (block_ns <= vcpu->halt_poll_ns)
				;
			/* we had a long block, shrink polling */
			else if (vcpu->halt_poll_ns && block_ns > halt_poll_ns)
				FUNC14(vcpu);
			/* we had a short halt and our poll time is too small */
			else if (vcpu->halt_poll_ns < halt_poll_ns &&
				block_ns < halt_poll_ns)
				FUNC2(vcpu);
		} else {
			vcpu->halt_poll_ns = 0;
		}
	}

	FUNC16(block_ns, waited, FUNC17(vcpu));
	FUNC8(vcpu);
}