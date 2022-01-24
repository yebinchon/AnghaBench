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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  dstpath ;

/* Variables and functions */
 int MAXPGPATH ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* datadir_target ; 
 scalar_t__ dry_run ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  pg_file_create_mode ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char const*) ; 

void
FUNC5(const char *path, off_t newsize)
{
	char		dstpath[MAXPGPATH];
	int			fd;

	if (dry_run)
		return;

	FUNC4(dstpath, sizeof(dstpath), "%s/%s", datadir_target, path);

	fd = FUNC2(dstpath, O_WRONLY, pg_file_create_mode);
	if (fd < 0)
		FUNC3("could not open file \"%s\" for truncation: %m",
				 dstpath);

	if (FUNC1(fd, newsize) != 0)
		FUNC3("could not truncate file \"%s\" to %u: %m",
				 dstpath, (unsigned int) newsize);

	FUNC0(fd);
}