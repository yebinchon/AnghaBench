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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  cache ; 
 int /*<<< orphan*/  family ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  handle ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(void)
{
	int ret;

	handle = FUNC4();
	if (!handle) {
		FUNC0("Failed to create handle\n");
		goto err;
	}

	if (FUNC1(handle)) {
		FUNC0("Failed to connect to generic netlink\n");
		goto err;
	}

	ret = FUNC2(handle, &cache);
	if (ret < 0) {
		FUNC0("Failed to allocate netlink cache\n");
		goto err;
	}

	family = FUNC3(cache, "switch");
	if (!family) {
		FUNC0("Switch API not present\n");
		goto err;
	}
	return 0;

err:
	FUNC5();
	return -EINVAL;
}