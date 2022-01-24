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
typedef  int TimeLineID ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 scalar_t__ ArchiveRecoveryRequested ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAXFNAMELEN ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ errno ; 

bool
FUNC8(TimeLineID probeTLI)
{
	char		path[MAXPGPATH];
	char		histfname[MAXFNAMELEN];
	FILE	   *fd;

	/* Timeline 1 does not have a history file, so no need to check */
	if (probeTLI == 1)
		return false;

	if (ArchiveRecoveryRequested)
	{
		FUNC3(histfname, probeTLI);
		FUNC2(path, histfname, "RECOVERYHISTORY", 0, false);
	}
	else
		FUNC4(path, probeTLI);

	fd = FUNC0(path, "r");
	if (fd != NULL)
	{
		FUNC1(fd);
		return true;
	}
	else
	{
		if (errno != ENOENT)
			FUNC5(FATAL,
					(FUNC6(),
					 FUNC7("could not open file \"%s\": %m", path)));
		return false;
	}
}