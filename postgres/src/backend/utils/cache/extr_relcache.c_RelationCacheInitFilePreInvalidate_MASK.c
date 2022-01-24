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
typedef  int /*<<< orphan*/  sharedinitfname ;
typedef  int /*<<< orphan*/  localinitfname ;

/* Variables and functions */
 char* DatabasePath ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MAXPGPATH ; 
 char* RELCACHE_INIT_FILENAME ; 
 int /*<<< orphan*/  RelCacheInitLock ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
	char		localinitfname[MAXPGPATH];
	char		sharedinitfname[MAXPGPATH];

	if (DatabasePath)
		FUNC1(localinitfname, sizeof(localinitfname), "%s/%s",
				 DatabasePath, RELCACHE_INIT_FILENAME);
	FUNC1(sharedinitfname, sizeof(sharedinitfname), "global/%s",
			 RELCACHE_INIT_FILENAME);

	FUNC0(RelCacheInitLock, LW_EXCLUSIVE);

	/*
	 * The files might not be there if no backend has been started since the
	 * last removal.  But complain about failures other than ENOENT with
	 * ERROR.  Fortunately, it's not too late to abort the transaction if we
	 * can't get rid of the would-be-obsolete init file.
	 */
	if (DatabasePath)
		FUNC2(localinitfname, ERROR);
	FUNC2(sharedinitfname, ERROR);
}