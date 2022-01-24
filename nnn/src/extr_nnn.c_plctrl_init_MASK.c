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
 int /*<<< orphan*/  CMD_LEN_MAX ; 
 size_t NNN_PIPE ; 
 int /*<<< orphan*/  TRUE ; 
 int _FAILURE ; 
 int _SUCCESS ; 
 int /*<<< orphan*/ * env_cfg ; 
 int /*<<< orphan*/  g_buf ; 
 int /*<<< orphan*/  g_pipepath ; 
 char* g_tmpfpath ; 
 int g_tmpfplen ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(void)
{
	FUNC4(g_buf, CMD_LEN_MAX, "nnn-pipe.%d", FUNC0());
	/* g_tmpfpath is used to generate tmp file names */
	g_tmpfpath[g_tmpfplen - 1] = '\0';
	FUNC2(g_tmpfpath, g_buf, g_pipepath);
	FUNC5(g_pipepath);
	if (FUNC1(g_pipepath, 0600) != 0)
		return _FAILURE;

	FUNC3(env_cfg[NNN_PIPE], g_pipepath, TRUE);

	return _SUCCESS;
}