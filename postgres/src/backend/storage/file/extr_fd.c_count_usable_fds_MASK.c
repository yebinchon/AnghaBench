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
struct rlimit {int rlim_cur; } ;

/* Variables and functions */
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int /*<<< orphan*/  RLIMIT_OFILE ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ errno ; 
 int FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int*,int) ; 

__attribute__((used)) static void
FUNC9(int max_to_probe, int *usable_fds, int *already_open)
{
	int		   *fd;
	int			size;
	int			used = 0;
	int			highestfd = 0;
	int			j;

#ifdef HAVE_GETRLIMIT
	struct rlimit rlim;
	int			getrlimit_status;
#endif

	size = 1024;
	fd = (int *) FUNC6(size * sizeof(int));

#ifdef HAVE_GETRLIMIT
#ifdef RLIMIT_NOFILE			/* most platforms use RLIMIT_NOFILE */
	getrlimit_status = getrlimit(RLIMIT_NOFILE, &rlim);
#else							/* but BSD doesn't ... */
	getrlimit_status = getrlimit(RLIMIT_OFILE, &rlim);
#endif							/* RLIMIT_NOFILE */
	if (getrlimit_status != 0)
		ereport(WARNING, (errmsg("getrlimit failed: %m")));
#endif							/* HAVE_GETRLIMIT */

	/* dup until failure or probe limit reached */
	for (;;)
	{
		int			thisfd;

#ifdef HAVE_GETRLIMIT

		/*
		 * don't go beyond RLIMIT_NOFILE; causes irritating kernel logs on
		 * some platforms
		 */
		if (getrlimit_status == 0 && highestfd >= rlim.rlim_cur - 1)
			break;
#endif

		thisfd = FUNC1(0);
		if (thisfd < 0)
		{
			/* Expect EMFILE or ENFILE, else it's fishy */
			if (errno != EMFILE && errno != ENFILE)
				FUNC2(WARNING, "dup(0) failed after %d successes: %m", used);
			break;
		}

		if (used >= size)
		{
			size *= 2;
			fd = (int *) FUNC8(fd, size * sizeof(int));
		}
		fd[used++] = thisfd;

		if (highestfd < thisfd)
			highestfd = thisfd;

		if (used >= max_to_probe)
			break;
	}

	/* release the files we opened */
	for (j = 0; j < used; j++)
		FUNC0(fd[j]);

	FUNC7(fd);

	/*
	 * Return results.  usable_fds is just the number of successful dups. We
	 * assume that the system limit is highestfd+1 (remember 0 is a legal FD
	 * number) and so already_open is highestfd+1 - usable_fds.
	 */
	*usable_fds = used;
	*already_open = highestfd + 1 - used;
}