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
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hardware_enable_failed ; 
 int /*<<< orphan*/  hardware_enable_nolock ; 
 int /*<<< orphan*/  kvm_count_lock ; 
 int kvm_usage_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	int r = 0;

	FUNC4(&kvm_count_lock);

	kvm_usage_count++;
	if (kvm_usage_count == 1) {
		FUNC1(&hardware_enable_failed, 0);
		FUNC3(hardware_enable_nolock, NULL, 1);

		if (FUNC0(&hardware_enable_failed)) {
			FUNC2();
			r = -EBUSY;
		}
	}

	FUNC5(&kvm_count_lock);

	return r;
}