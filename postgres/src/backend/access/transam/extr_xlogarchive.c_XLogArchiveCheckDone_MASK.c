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

/* Variables and functions */
 int MAXPGPATH ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 

bool
FUNC6(const char *xlog)
{
	char		archiveStatusPath[MAXPGPATH];
	struct stat stat_buf;
	bool		inRecovery = FUNC0();

	/*
	 * The file is always deletable if archive_mode is "off".  On standbys
	 * archiving is disabled if archive_mode is "on", and enabled with
	 * "always".  On a primary, archiving is enabled if archive_mode is "on"
	 * or "always".
	 */
	if (!((FUNC3() && !inRecovery) ||
		  (FUNC4() && inRecovery)))
		return true;

	/* First check for .done --- this means archiver is done with it */
	FUNC1(archiveStatusPath, xlog, ".done");
	if (FUNC5(archiveStatusPath, &stat_buf) == 0)
		return true;

	/* check for .ready --- this means archiver is still busy with it */
	FUNC1(archiveStatusPath, xlog, ".ready");
	if (FUNC5(archiveStatusPath, &stat_buf) == 0)
		return false;

	/* Race condition --- maybe archiver just finished, so recheck */
	FUNC1(archiveStatusPath, xlog, ".done");
	if (FUNC5(archiveStatusPath, &stat_buf) == 0)
		return true;

	/* Retry creation of the .ready file */
	FUNC2(xlog);
	return false;
}