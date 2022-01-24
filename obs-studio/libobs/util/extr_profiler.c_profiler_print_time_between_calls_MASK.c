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
typedef  int /*<<< orphan*/  profiler_snapshot_t ;

/* Variables and functions */
 int /*<<< orphan*/  profile_print_entry_expected ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(profiler_snapshot_t *snap)
{
	FUNC0("== Profiler Time Between Calls ==================",
			   profile_print_entry_expected, snap);
}