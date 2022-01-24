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
 int MAXPGPATH ; 
 char* datadir_target ; 
 scalar_t__ dry_run ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *path)
{
	char		dstpath[MAXPGPATH];

	if (dry_run)
		return;

	FUNC2(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);
	if (FUNC1(dstpath) != 0)
		FUNC0("could not remove directory \"%s\": %m",
				 dstpath);
}