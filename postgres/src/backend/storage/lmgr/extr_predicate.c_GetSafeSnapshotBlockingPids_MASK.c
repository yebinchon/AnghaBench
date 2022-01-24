#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  inLink; TYPE_1__* sxactOut; } ;
struct TYPE_9__ {int pid; int /*<<< orphan*/  possibleUnsafeConflicts; } ;
struct TYPE_8__ {int pid; } ;
typedef  TYPE_2__ SERIALIZABLEXACT ;
typedef  TYPE_3__* RWConflict ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  RWConflictData ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  inLink ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(int blocked_pid, int *output, int output_size)
{
	int			num_written = 0;
	SERIALIZABLEXACT *sxact;

	FUNC1(SerializableXactHashLock, LW_SHARED);

	/* Find blocked_pid's SERIALIZABLEXACT by linear search. */
	for (sxact = FUNC0(); sxact != NULL; sxact = FUNC3(sxact))
	{
		if (sxact->pid == blocked_pid)
			break;
	}

	/* Did we find it, and is it currently waiting in GetSafeSnapshot? */
	if (sxact != NULL && FUNC5(sxact))
	{
		RWConflict	possibleUnsafeConflict;

		/* Traverse the list of possible unsafe conflicts collecting PIDs. */
		possibleUnsafeConflict = (RWConflict)
			FUNC4(&sxact->possibleUnsafeConflicts,
						 &sxact->possibleUnsafeConflicts,
						 FUNC6(RWConflictData, inLink));

		while (possibleUnsafeConflict != NULL && num_written < output_size)
		{
			output[num_written++] = possibleUnsafeConflict->sxactOut->pid;
			possibleUnsafeConflict = (RWConflict)
				FUNC4(&sxact->possibleUnsafeConflicts,
							 &possibleUnsafeConflict->inLink,
							 FUNC6(RWConflictData, inLink));
		}
	}

	FUNC2(SerializableXactHashLock);

	return num_written;
}