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
typedef  int uint32 ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC8(void)
{
#ifdef HAVE_SHM_OPEN
	int			ntries = 10;

	/* Initialize random(); this function is its only user in this program. */
	srandom((unsigned int) (getpid() ^ time(NULL)));

	while (ntries > 0)
	{
		uint32		handle;
		char		name[64];
		int			fd;

		handle = random();
		snprintf(name, 64, "/PostgreSQL.%u", handle);
		if ((fd = shm_open(name, O_CREAT | O_RDWR | O_EXCL, 0600)) != -1)
		{
			close(fd);
			shm_unlink(name);
			return "posix";
		}
		if (errno != EEXIST)
			break;
		--ntries;
	}
#endif

#ifdef WIN32
	return "windows";
#else
	return "sysv";
#endif
}