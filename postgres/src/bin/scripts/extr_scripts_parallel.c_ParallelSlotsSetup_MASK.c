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
typedef  int /*<<< orphan*/  ParallelSlot ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FD_SETSIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*,char const*,char const*,int,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (int) ; 

ParallelSlot *
FUNC7(const char *dbname, const char *host, const char *port,
				   const char *username, bool prompt_password,
				   const char *progname, bool echo,
				   PGconn *conn, int numslots)
{
	ParallelSlot *slots;
	int			i;

	FUNC0(conn != NULL);

	slots = (ParallelSlot *) FUNC6(sizeof(ParallelSlot) * numslots);
	FUNC4(slots, conn);
	if (numslots > 1)
	{
		for (i = 1; i < numslots; i++)
		{
			conn = FUNC2(dbname, host, port, username, prompt_password,
								   progname, echo, false, true);

			/*
			 * Fail and exit immediately if trying to use a socket in an
			 * unsupported range.  POSIX requires open(2) to use the lowest
			 * unused file descriptor and the hint given relies on that.
			 */
			if (FUNC1(conn) >= FD_SETSIZE)
			{
				FUNC5("too many jobs for this platform -- try %d", i);
				FUNC3(1);
			}

			FUNC4(slots + i, conn);
		}
	}

	return slots;
}