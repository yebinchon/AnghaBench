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
typedef  int /*<<< orphan*/  dstpath ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int MAXPGPATH ; 
 char* datadir_target ; 
 scalar_t__ dry_run ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char const*) ; 
 scalar_t__ FUNC2 (char*) ; 

void
FUNC3(const char *path, bool missing_ok)
{
	char		dstpath[MAXPGPATH];

	if (dry_run)
		return;

	FUNC1(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);
	if (FUNC2(dstpath) != 0)
	{
		if (errno == ENOENT && missing_ok)
			return;

		FUNC0("could not remove file \"%s\": %m",
				 dstpath);
	}
}