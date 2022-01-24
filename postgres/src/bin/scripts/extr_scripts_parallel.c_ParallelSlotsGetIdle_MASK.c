#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {int isFree; int /*<<< orphan*/  connection; } ;
typedef  TYPE_1__ ParallelSlot ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int,int /*<<< orphan*/ *,int*) ; 

ParallelSlot *
FUNC13(ParallelSlot *slots, int numslots)
{
	int			i;
	int			firstFree = -1;

	/*
	 * Look for any connection currently free.  If there is one, mark it as
	 * taken and let the caller know the slot to use.
	 */
	for (i = 0; i < numslots; i++)
	{
		if (slots[i].isFree)
		{
			slots[i].isFree = false;
			return slots + i;
		}
	}

	/*
	 * No free slot found, so wait until one of the connections has finished
	 * its task and return the available slot.
	 */
	while (firstFree < 0)
	{
		fd_set		slotset;
		int			maxFd = 0;
		bool		aborting;

		/* We must reconstruct the fd_set for each call to select_loop */
		FUNC3(&slotset);

		for (i = 0; i < numslots; i++)
		{
			int			sock = FUNC7(slots[i].connection);

			/*
			 * We don't really expect any connections to lose their sockets
			 * after startup, but just in case, cope by ignoring them.
			 */
			if (sock < 0)
				continue;

			FUNC2(sock, &slotset);
			if (sock > maxFd)
				maxFd = sock;
		}

		FUNC9(slots->connection);
		i = FUNC12(maxFd, &slotset, &aborting);
		FUNC8();

		if (aborting)
		{
			/*
			 * We set the cancel-receiving connection to the one in the zeroth
			 * slot above, so fetch the error from there.
			 */
			FUNC10(slots->connection);
			return NULL;
		}
		FUNC0(i != 0);

		for (i = 0; i < numslots; i++)
		{
			int			sock = FUNC7(slots[i].connection);

			if (sock >= 0 && FUNC1(sock, &slotset))
			{
				/* select() says input is available, so consume it */
				FUNC4(slots[i].connection);
			}

			/* Collect result(s) as long as any are available */
			while (!FUNC6(slots[i].connection))
			{
				PGresult   *result = FUNC5(slots[i].connection);

				if (result != NULL)
				{
					/* Check and discard the command result */
					if (!FUNC11(slots[i].connection, result))
						return NULL;
				}
				else
				{
					/* This connection has become idle */
					slots[i].isFree = true;
					if (firstFree < 0)
						firstFree = i;
					break;
				}
			}
		}
	}

	slots[firstFree].isFree = false;
	return slots + firstFree;
}