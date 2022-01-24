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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  LOG ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PMSIGNAL_WAKEN_ARCHIVER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void
FUNC7(const char *xlog)
{
	char		archiveStatusPath[MAXPGPATH];
	FILE	   *fd;

	/* insert an otherwise empty file called <XLOG>.ready */
	FUNC3(archiveStatusPath, xlog, ".ready");
	fd = FUNC0(archiveStatusPath, "w");
	if (fd == NULL)
	{
		FUNC4(LOG,
				(FUNC5(),
				 FUNC6("could not create archive status file \"%s\": %m",
						archiveStatusPath)));
		return;
	}
	if (FUNC1(fd))
	{
		FUNC4(LOG,
				(FUNC5(),
				 FUNC6("could not write archive status file \"%s\": %m",
						archiveStatusPath)));
		return;
	}

	/* Notify archiver that it's got something to do */
	if (IsUnderPostmaster)
		FUNC2(PMSIGNAL_WAKEN_ARCHIVER);
}