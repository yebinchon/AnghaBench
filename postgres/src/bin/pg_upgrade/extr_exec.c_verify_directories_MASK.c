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
 int R_OK ; 
 int W_OK ; 
 int X_OK ; 
 scalar_t__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  new_cluster ; 
 int /*<<< orphan*/  old_cluster ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 

void
FUNC5(void)
{
#ifndef WIN32
	if (FUNC0(".", R_OK | W_OK | X_OK) != 0)
#else
	if (win32_check_directory_write_permissions() != 0)
#endif
		FUNC3("You must have read and write access in the current directory.\n");

	FUNC1(&old_cluster);
	FUNC2(&old_cluster);
	FUNC1(&new_cluster);
	FUNC2(&new_cluster);
}