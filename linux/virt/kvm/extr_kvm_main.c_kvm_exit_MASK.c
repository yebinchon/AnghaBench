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

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_KVM_STARTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_hardware_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hardware_disable_nolock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  kvm_debugfs_dir ; 
 int /*<<< orphan*/  kvm_dev ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  kvm_reboot_notifier ; 
 int /*<<< orphan*/  kvm_syscore_ops ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(void)
{
	FUNC1(kvm_debugfs_dir);
	FUNC9(&kvm_dev);
	FUNC3(kvm_vcpu_cache);
	FUNC6();
	FUNC12(&kvm_syscore_ops);
	FUNC11(&kvm_reboot_notifier);
	FUNC0(CPUHP_AP_KVM_STARTING);
	FUNC10(hardware_disable_nolock, NULL, 1);
	FUNC5();
	FUNC4();
	FUNC7();
	FUNC2(cpus_hardware_enabled);
	FUNC8();
}