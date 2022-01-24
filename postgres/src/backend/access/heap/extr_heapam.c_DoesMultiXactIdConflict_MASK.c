#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_6__ {int /*<<< orphan*/  hwlock; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  xid; } ;
typedef  TYPE_1__ MultiXactMember ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  size_t LockTupleMode ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_2__* tupleLockExtraInfo ; 

__attribute__((used)) static bool
FUNC10(MultiXactId multi, uint16 infomask,
						LockTupleMode lockmode, bool *current_is_member)
{
	int			nmembers;
	MultiXactMember *members;
	bool		result = false;
	LOCKMODE	wanted = tupleLockExtraInfo[lockmode].hwlock;

	if (FUNC2(infomask))
		return false;

	nmembers = FUNC1(multi, &members, false,
									 FUNC3(infomask));
	if (nmembers >= 0)
	{
		int			i;

		for (i = 0; i < nmembers; i++)
		{
			TransactionId memxid;
			LOCKMODE	memlockmode;

			if (result && (current_is_member == NULL || *current_is_member))
				break;

			memlockmode = FUNC5(members[i].status);

			/* ignore members from current xact (but track their presence) */
			memxid = members[i].xid;
			if (FUNC7(memxid))
			{
				if (current_is_member != NULL)
					*current_is_member = true;
				continue;
			}
			else if (result)
				continue;

			/* ignore members that don't conflict with the lock we want */
			if (!FUNC0(memlockmode, wanted))
				continue;

			if (FUNC4(members[i].status))
			{
				/* ignore aborted updaters */
				if (FUNC6(memxid))
					continue;
			}
			else
			{
				/* ignore lockers-only that are no longer in progress */
				if (!FUNC8(memxid))
					continue;
			}

			/*
			 * Whatever remains are either live lockers that conflict with our
			 * wanted lock, and updaters that are not aborted.  Those conflict
			 * with what we want.  Set up to return true, but keep going to
			 * look for the current transaction among the multixact members,
			 * if needed.
			 */
			result = true;
		}
		FUNC9(members);
	}

	return result;
}