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
 int /*<<< orphan*/  bmstr ; 
 int /*<<< orphan*/  cfgdir ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_pipepath ; 
 int /*<<< orphan*/  g_selpath ; 
 int /*<<< orphan*/  initpath ; 
 int /*<<< orphan*/  plugindir ; 
 int /*<<< orphan*/  pluginstr ; 
 int /*<<< orphan*/  sessiondir ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC1(g_selpath);
	FUNC1(plugindir);
	FUNC1(sessiondir);
	FUNC1(cfgdir);
	FUNC1(initpath);
	FUNC1(bmstr);
	FUNC1(pluginstr);

	FUNC2(g_pipepath);

#ifdef DBGMODE
	disabledbg();
#endif
}