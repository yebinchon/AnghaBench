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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/ * nr_pages ; 
 scalar_t__ opt_cgroup ; 
 scalar_t__ opt_hwpoison ; 
 int opt_list ; 
 scalar_t__ opt_mark_idle ; 
 scalar_t__ opt_unpoison ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  total_pages ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

__attribute__((used)) static void FUNC8(unsigned long voffset, unsigned long offset,
		     uint64_t flags, uint64_t cgroup, uint64_t mapcnt,
		     uint64_t pme)
{
	flags = FUNC3(flags, pme);

	if (!FUNC0(flags))
		return;

	if (opt_cgroup && cgroup != (uint64_t)opt_cgroup)
		return;

	if (opt_hwpoison)
		FUNC2(offset);
	if (opt_unpoison)
		FUNC7(offset);

	if (opt_mark_idle)
		FUNC4(offset);

	if (opt_list == 1)
		FUNC6(voffset, offset, 1, flags, cgroup, mapcnt);
	else if (opt_list == 2)
		FUNC5(voffset, offset, flags, cgroup, mapcnt);

	nr_pages[FUNC1(flags)]++;
	total_pages++;
}