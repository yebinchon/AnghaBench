#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* TransactionId ;
struct TYPE_10__ {int t_infomask; } ;
struct TYPE_9__ {void* xid; } ;
typedef  TYPE_1__ MultiXactMember ;
typedef  void* MultiXactId ;
typedef  TYPE_2__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int FUNC0 (void*,TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int HEAP_MOVED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int HEAP_XMAX_IS_MULTI ; 
 void* FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*,void*) ; 
 scalar_t__ FUNC8 (void*) ; 
 scalar_t__ FUNC9 (void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

bool
FUNC11(HeapTupleHeader tuple, TransactionId cutoff_xid,
						MultiXactId cutoff_multi, Buffer buf)
{
	TransactionId xid;

	xid = FUNC4(tuple);
	if (FUNC8(xid) &&
		FUNC9(xid, cutoff_xid))
		return true;

	/*
	 * The considerations for multixacts are complicated; look at
	 * heap_prepare_freeze_tuple for justifications.  This routine had better
	 * be in sync with that one!
	 */
	if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
	{
		MultiXactId multi;

		multi = FUNC3(tuple);
		if (!FUNC6(multi))
		{
			/* no xmax set, ignore */
			;
		}
		else if (FUNC1(tuple->t_infomask))
			return true;
		else if (FUNC7(multi, cutoff_multi))
			return true;
		else
		{
			MultiXactMember *members;
			int			nmembers;
			int			i;

			/* need to check whether any member of the mxact is too old */

			nmembers = FUNC0(multi, &members, false,
											 FUNC2(tuple->t_infomask));

			for (i = 0; i < nmembers; i++)
			{
				if (FUNC9(members[i].xid, cutoff_xid))
				{
					FUNC10(members);
					return true;
				}
			}
			if (nmembers > 0)
				FUNC10(members);
		}
	}
	else
	{
		xid = FUNC3(tuple);
		if (FUNC8(xid) &&
			FUNC9(xid, cutoff_xid))
			return true;
	}

	if (tuple->t_infomask & HEAP_MOVED)
	{
		xid = FUNC5(tuple);
		if (FUNC8(xid) &&
			FUNC9(xid, cutoff_xid))
			return true;
	}

	return false;
}