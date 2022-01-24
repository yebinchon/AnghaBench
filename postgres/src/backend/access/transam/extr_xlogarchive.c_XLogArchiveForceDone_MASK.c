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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 

void
FUNC8(const char *xlog)
{
	char		archiveReady[MAXPGPATH];
	char		archiveDone[MAXPGPATH];
	struct stat stat_buf;
	FILE	   *fd;

	/* Exit if already known done */
	FUNC2(archiveDone, xlog, ".done");
	if (FUNC7(archiveDone, &stat_buf) == 0)
		return;

	/* If .ready exists, rename it to .done */
	FUNC2(archiveReady, xlog, ".ready");
	if (FUNC7(archiveReady, &stat_buf) == 0)
	{
		(void) FUNC3(archiveReady, archiveDone, WARNING);
		return;
	}

	/* insert an otherwise empty file called <XLOG>.done */
	fd = FUNC0(archiveDone, "w");
	if (fd == NULL)
	{
		FUNC4(LOG,
				(FUNC5(),
				 FUNC6("could not create archive status file \"%s\": %m",
						archiveDone)));
		return;
	}
	if (FUNC1(fd))
	{
		FUNC4(LOG,
				(FUNC5(),
				 FUNC6("could not write archive status file \"%s\": %m",
						archiveDone)));
		return;
	}
}