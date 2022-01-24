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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lua_source_def_mutex ; 
 int /*<<< orphan*/  lua_tick ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  startup_script ; 
 int /*<<< orphan*/  tick_mutex ; 
 int /*<<< orphan*/  timer_mutex ; 

void FUNC3(void)
{
	FUNC1(lua_tick, NULL);

	FUNC0(startup_script);
	FUNC2(&tick_mutex);
	FUNC2(&timer_mutex);
	FUNC2(&lua_source_def_mutex);
}