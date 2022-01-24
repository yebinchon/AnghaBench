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
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int errno ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 scalar_t__ FUNC5 (char const*) ; 

bool
FUNC6(const char *path, bool error_on_failure)
{
	struct stat filestats;
	int			stat_errno;

	/* Get the final size for pgstat reporting. */
	if (FUNC4(path, &filestats) != 0)
		stat_errno = errno;
	else
		stat_errno = 0;

	/*
	 * Unlike FileClose's automatic file deletion code, we tolerate
	 * non-existence to support BufFileDeleteShared which doesn't know how
	 * many segments it has to delete until it runs out.
	 */
	if (stat_errno == ENOENT)
		return false;

	if (FUNC5(path) < 0)
	{
		if (errno != ENOENT)
			FUNC1(error_on_failure ? ERROR : LOG,
					(FUNC2(),
					 FUNC3("could not unlink temporary file \"%s\": %m",
							path)));
		return false;
	}

	if (stat_errno == 0)
		FUNC0(path, filestats.st_size);
	else
	{
		errno = stat_errno;
		FUNC1(LOG,
				(FUNC2(),
				 FUNC3("could not stat file \"%s\": %m", path)));
	}

	return true;
}