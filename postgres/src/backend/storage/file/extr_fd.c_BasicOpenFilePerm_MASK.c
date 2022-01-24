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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int EMFILE ; 
 int ENFILE ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int errno ; 
 int FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *fileName, int fileFlags, mode_t fileMode)
{
	int			fd;

tryAgain:
	fd = FUNC4(fileName, fileFlags, fileMode);

	if (fd >= 0)
		return fd;				/* success! */

	if (errno == EMFILE || errno == ENFILE)
	{
		int			save_errno = errno;

		FUNC1(LOG,
				(FUNC2(ERRCODE_INSUFFICIENT_RESOURCES),
				 FUNC3("out of file descriptors: %m; release and retry")));
		errno = 0;
		if (FUNC0())
			goto tryAgain;
		errno = save_errno;
	}

	return -1;					/* failure */
}