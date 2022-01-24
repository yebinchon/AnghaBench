#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned short fdstate; int /*<<< orphan*/ * fileName; } ;
typedef  size_t Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned short FD_CLOSE_AT_EOXACT ; 
 unsigned short FD_DELETE_AT_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t SizeVfdCache ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/ * allocatedDescs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int have_xact_temporary_files ; 
 int /*<<< orphan*/ * numAllocatedDescs ; 

__attribute__((used)) static void
FUNC5(bool isCommit, bool isProcExit)
{
	Index		i;

	/*
	 * Careful here: at proc_exit we need extra cleanup, not just
	 * xact_temporary files.
	 */
	if (isProcExit || have_xact_temporary_files)
	{
		FUNC0(FUNC2(0));	/* Make sure ring not corrupted */
		for (i = 1; i < SizeVfdCache; i++)
		{
			unsigned short fdstate = VfdCache[i].fdstate;

			if (((fdstate & FD_DELETE_AT_CLOSE) || (fdstate & FD_CLOSE_AT_EOXACT)) &&
				VfdCache[i].fileName != NULL)
			{
				/*
				 * If we're in the process of exiting a backend process, close
				 * all temporary files. Otherwise, only close temporary files
				 * local to the current transaction. They should be closed by
				 * the ResourceOwner mechanism already, so this is just a
				 * debugging cross-check.
				 */
				if (isProcExit)
					FUNC1(i);
				else if (fdstate & FD_CLOSE_AT_EOXACT)
				{
					FUNC4(WARNING,
						 "temporary file %s not closed at end-of-transaction",
						 VfdCache[i].fileName);
					FUNC1(i);
				}
			}
		}

		have_xact_temporary_files = false;
	}

	/* Complain if any allocated files remain open at commit. */
	if (isCommit && numAllocatedDescs > 0)
		FUNC4(WARNING, "%d temporary files and directories not closed at end-of-transaction",
			 numAllocatedDescs);

	/* Clean up "allocated" stdio files, dirs and fds. */
	while (numAllocatedDescs > 0)
		FUNC3(&allocatedDescs[0]);
}