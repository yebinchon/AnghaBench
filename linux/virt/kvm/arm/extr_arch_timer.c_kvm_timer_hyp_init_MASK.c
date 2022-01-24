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
struct TYPE_2__ {int /*<<< orphan*/  cc; } ;
struct arch_timer_kvm_info {scalar_t__ virtual_irq; scalar_t__ physical_irq; TYPE_1__ timecounter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_KVM_ARM_TIMER_STARTING ; 
 int ENODEV ; 
 scalar_t__ IRQF_TRIGGER_HIGH ; 
 scalar_t__ IRQF_TRIGGER_LOW ; 
 struct arch_timer_kvm_info* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  has_gic_active_state ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ host_ptimer_irq ; 
 scalar_t__ host_ptimer_irq_flags ; 
 scalar_t__ host_vtimer_irq ; 
 scalar_t__ host_vtimer_irq_flags ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_arch_timer_handler ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  kvm_timer_dying_cpu ; 
 int /*<<< orphan*/  kvm_timer_starting_cpu ; 
 int FUNC9 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* timecounter ; 

int FUNC11(bool has_gic)
{
	struct arch_timer_kvm_info *info;
	int err;

	info = FUNC0();
	timecounter = &info->timecounter;

	if (!timecounter->cc) {
		FUNC7("kvm_arch_timer: uninitialized timecounter\n");
		return -ENODEV;
	}

	/* First, do the virtual EL1 timer irq */

	if (info->virtual_irq <= 0) {
		FUNC7("kvm_arch_timer: invalid virtual timer IRQ: %d\n",
			info->virtual_irq);
		return -ENODEV;
	}
	host_vtimer_irq = info->virtual_irq;

	host_vtimer_irq_flags = FUNC4(host_vtimer_irq);
	if (host_vtimer_irq_flags != IRQF_TRIGGER_HIGH &&
	    host_vtimer_irq_flags != IRQF_TRIGGER_LOW) {
		FUNC7("Invalid trigger for vtimer IRQ%d, assuming level low\n",
			host_vtimer_irq);
		host_vtimer_irq_flags = IRQF_TRIGGER_LOW;
	}

	err = FUNC9(host_vtimer_irq, kvm_arch_timer_handler,
				 "kvm guest vtimer", FUNC8());
	if (err) {
		FUNC7("kvm_arch_timer: can't request vtimer interrupt %d (%d)\n",
			host_vtimer_irq, err);
		return err;
	}

	if (has_gic) {
		err = FUNC5(host_vtimer_irq,
					    FUNC8());
		if (err) {
			FUNC7("kvm_arch_timer: error setting vcpu affinity\n");
			goto out_free_irq;
		}

		FUNC10(&has_gic_active_state);
	}

	FUNC6("virtual timer IRQ%d\n", host_vtimer_irq);

	/* Now let's do the physical EL1 timer irq */

	if (info->physical_irq > 0) {
		host_ptimer_irq = info->physical_irq;
		host_ptimer_irq_flags = FUNC4(host_ptimer_irq);
		if (host_ptimer_irq_flags != IRQF_TRIGGER_HIGH &&
		    host_ptimer_irq_flags != IRQF_TRIGGER_LOW) {
			FUNC7("Invalid trigger for ptimer IRQ%d, assuming level low\n",
				host_ptimer_irq);
			host_ptimer_irq_flags = IRQF_TRIGGER_LOW;
		}

		err = FUNC9(host_ptimer_irq, kvm_arch_timer_handler,
					 "kvm guest ptimer", FUNC8());
		if (err) {
			FUNC7("kvm_arch_timer: can't request ptimer interrupt %d (%d)\n",
				host_ptimer_irq, err);
			return err;
		}

		if (has_gic) {
			err = FUNC5(host_ptimer_irq,
						    FUNC8());
			if (err) {
				FUNC7("kvm_arch_timer: error setting vcpu affinity\n");
				goto out_free_irq;
			}
		}

		FUNC6("physical timer IRQ%d\n", host_ptimer_irq);
	} else if (FUNC3()) {
		FUNC7("kvm_arch_timer: invalid physical timer IRQ: %d\n",
			info->physical_irq);
		err = -ENODEV;
		goto out_free_irq;
	}

	FUNC1(CPUHP_AP_KVM_ARM_TIMER_STARTING,
			  "kvm/arm/timer:starting", kvm_timer_starting_cpu,
			  kvm_timer_dying_cpu);
	return 0;
out_free_irq:
	FUNC2(host_vtimer_irq, FUNC8());
	return err;
}