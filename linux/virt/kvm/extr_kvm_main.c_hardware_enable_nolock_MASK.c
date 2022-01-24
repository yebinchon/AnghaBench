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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_hardware_enabled ; 
 int /*<<< orphan*/  hardware_enable_failed ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *junk)
{
	int cpu = FUNC6();
	int r;

	if (FUNC3(cpu, cpus_hardware_enabled))
		return;

	FUNC2(cpu, cpus_hardware_enabled);

	r = FUNC4();

	if (r) {
		FUNC1(cpu, cpus_hardware_enabled);
		FUNC0(&hardware_enable_failed);
		FUNC5("kvm: enabling virtualization on CPU%d failed\n", cpu);
	}
}