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
typedef  int /*<<< orphan*/  kvm_pfn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(kvm_pfn_t pfn)
{
	/*
	 * The metadata used by is_zone_device_page() to determine whether or
	 * not a page is ZONE_DEVICE is guaranteed to be valid if and only if
	 * the device has been pinned, e.g. by get_user_pages().  WARN if the
	 * page_count() is zero to help detect bad usage of this helper.
	 */
	if (!FUNC4(pfn) || FUNC0(!FUNC2(FUNC3(pfn))))
		return false;

	return FUNC1(FUNC3(pfn));
}