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
typedef  scalar_t__ uchar ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  TMP_LEN_MAX ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_tmpfpath ; 
 scalar_t__ g_tmpfplen ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(void)
{
	char *path;

	if (FUNC2("/tmp"))
		g_tmpfplen = (uchar)FUNC3(g_tmpfpath, "/tmp", TMP_LEN_MAX);
	else {
		path = FUNC1("TMPDIR");
		if (path)
			g_tmpfplen = (uchar)FUNC3(g_tmpfpath, path, TMP_LEN_MAX);
		else {
			FUNC0(stderr, "set TMPDIR\n");
			return FALSE;
		}
	}

	return TRUE;
}