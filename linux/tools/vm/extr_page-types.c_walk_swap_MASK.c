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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nr_pages ; 
 scalar_t__ opt_cgroup ; 
 int opt_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  total_pages ; 

__attribute__((used)) static void FUNC6(unsigned long voffset, uint64_t pme)
{
	uint64_t flags = FUNC2(0, pme);

	if (!FUNC0(flags))
		return;

	if (opt_cgroup)
		return;

	if (opt_list == 1)
		FUNC5(voffset, FUNC3(pme),
				1, flags, 0, 0);
	else if (opt_list == 2)
		FUNC4(voffset, FUNC3(pme), flags, 0, 0);

	nr_pages[FUNC1(flags)]++;
	total_pages++;
}