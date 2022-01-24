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
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  XLTW_Oper ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_4__ {int /*<<< orphan*/  status; int /*<<< orphan*/  xid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MultiXactStatus ;
typedef  TYPE_1__ MultiXactMember ;
typedef  int /*<<< orphan*/  MultiXactId ;
typedef  int /*<<< orphan*/  ItemPointer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC10(MultiXactId multi, MultiXactStatus status,
				   uint16 infomask, bool nowait,
				   Relation rel, ItemPointer ctid, XLTW_Oper oper,
				   int *remaining)
{
	bool		result = true;
	MultiXactMember *members;
	int			nmembers;
	int			remain = 0;

	/* for pre-pg_upgrade tuples, no need to sleep at all */
	nmembers = FUNC3(infomask) ? -1 :
		FUNC2(multi, &members, false,
							  FUNC4(infomask));

	if (nmembers >= 0)
	{
		int			i;

		for (i = 0; i < nmembers; i++)
		{
			TransactionId memxid = members[i].xid;
			MultiXactStatus memstatus = members[i].status;

			if (FUNC6(memxid))
			{
				remain++;
				continue;
			}

			if (!FUNC1(FUNC5(memstatus),
									 FUNC5(status)))
			{
				if (remaining && FUNC7(memxid))
					remain++;
				continue;
			}

			/*
			 * This member conflicts with our multi, so we have to sleep (or
			 * return failure, if asked to avoid waiting.)
			 *
			 * Note that we don't set up an error context callback ourselves,
			 * but instead we pass the info down to XactLockTableWait.  This
			 * might seem a bit wasteful because the context is set up and
			 * tore down for each member of the multixact, but in reality it
			 * should be barely noticeable, and it avoids duplicate code.
			 */
			if (nowait)
			{
				result = FUNC0(memxid);
				if (!result)
					break;
			}
			else
				FUNC8(memxid, rel, ctid, oper);
		}

		FUNC9(members);
	}

	if (remaining)
		*remaining = remain;

	return result;
}