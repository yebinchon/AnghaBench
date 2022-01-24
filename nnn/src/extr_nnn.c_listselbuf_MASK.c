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
 int FALSE ; 
 int /*<<< orphan*/  F_CLI ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  g_tmpfpath ; 
 int /*<<< orphan*/  pager ; 
 size_t selbufpos ; 
 size_t FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(void)
{
	int fd;
	size_t pos;

	if (!selbufpos)
		return FALSE;

	fd = FUNC1();
	if (fd == -1)
		return FALSE;

	pos = FUNC2(fd, NULL);

	FUNC0(fd);
	if (pos && pos == selbufpos)
		FUNC3(pager, g_tmpfpath, NULL, NULL, F_CLI);
	FUNC4(g_tmpfpath);

	return TRUE;
}