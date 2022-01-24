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
typedef  int /*<<< orphan*/  path ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

bool
FUNC5(const char *datadir)
{
	char		path[MAXPGPATH];
	int			fd;

	FUNC3(path, sizeof(path), "%s/postmaster.pid", datadir);

	if ((fd = FUNC1(path, O_RDONLY, 0)) < 0)
	{
		/* ENOTDIR means we will throw a more useful error later */
		if (errno != ENOENT && errno != ENOTDIR)
			FUNC2("could not open file \"%s\" for reading: %s\n",
					 path, FUNC4(errno));

		return false;
	}

	FUNC0(fd);
	return true;
}