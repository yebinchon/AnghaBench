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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 

bool
FUNC2(const char *xlog)
{
	char		archiveStatusPath[MAXPGPATH];
	struct stat stat_buf;

	/* First check for .done --- this means archiver is done with it */
	FUNC0(archiveStatusPath, xlog, ".done");
	if (FUNC1(archiveStatusPath, &stat_buf) == 0)
		return true;

	/* check for .ready --- this means archiver is still busy with it */
	FUNC0(archiveStatusPath, xlog, ".ready");
	if (FUNC1(archiveStatusPath, &stat_buf) == 0)
		return true;

	/* Race condition --- maybe archiver just finished, so recheck */
	FUNC0(archiveStatusPath, xlog, ".done");
	if (FUNC1(archiveStatusPath, &stat_buf) == 0)
		return true;

	return false;
}