#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nmembers; int /*<<< orphan*/  moff; int /*<<< orphan*/  mid; } ;
typedef  TYPE_1__ xl_multixact_create ;
struct TYPE_9__ {int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  MultiXactOffset ;
typedef  TYPE_2__ MultiXactMember ;
typedef  int /*<<< orphan*/  MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidMultiXactId ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RM_MULTIXACT_ID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int SizeOfMultiXactCreate ; 
 int /*<<< orphan*/  XLOG_MULTIXACT_CREATE_ID ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 

MultiXactId
FUNC14(int nmembers, MultiXactMember *members)
{
	MultiXactId multi;
	MultiXactOffset offset;
	xl_multixact_create xlrec;

	FUNC9(DEBUG2, "Create: %s",
				FUNC13(InvalidMultiXactId, nmembers, members));

	/*
	 * See if the same set of members already exists in our cache; if so, just
	 * re-use that MultiXactId.  (Note: it might seem that looking in our
	 * cache is insufficient, and we ought to search disk to see if a
	 * duplicate definition already exists.  But since we only ever create
	 * MultiXacts containing our own XID, in most cases any such MultiXacts
	 * were in fact created by us, and so will be in our cache.  There are
	 * corner cases where someone else added us to a MultiXact without our
	 * knowledge, but it's not worth checking for.)
	 */
	multi = FUNC11(nmembers, members);
	if (FUNC3(multi))
	{
		FUNC8(DEBUG2, "Create: in cache!");
		return multi;
	}

	/* Verify that there is a single update Xid among the given members. */
	{
		int			i;
		bool		has_update = false;

		for (i = 0; i < nmembers; i++)
		{
			if (FUNC2(members[i].status))
			{
				if (has_update)
					FUNC10(ERROR, "new multixact has more than one updating member");
				has_update = true;
			}
		}
	}

	/*
	 * Assign the MXID and offsets range to use, and make sure there is space
	 * in the OFFSETs and MEMBERs files.  NB: this routine does
	 * START_CRIT_SECTION().
	 *
	 * Note: unlike MultiXactIdCreate and MultiXactIdExpand, we do not check
	 * that we've called MultiXactIdSetOldestMember here.  This is because
	 * this routine is used in some places to create new MultiXactIds of which
	 * the current backend is not a member, notably during freezing of multis
	 * in vacuum.  During vacuum, in particular, it would be unacceptable to
	 * keep OldestMulti set, in case it runs for long.
	 */
	multi = FUNC1(nmembers, &offset);

	/* Make an XLOG entry describing the new MXID. */
	xlrec.mid = multi;
	xlrec.moff = offset;
	xlrec.nmembers = nmembers;

	/*
	 * XXX Note: there's a lot of padding space in MultiXactMember.  We could
	 * find a more compact representation of this Xlog record -- perhaps all
	 * the status flags in one XLogRecData, then all the xids in another one?
	 * Not clear that it's worth the trouble though.
	 */
	FUNC5();
	FUNC7((char *) (&xlrec), SizeOfMultiXactCreate);
	FUNC7((char *) members, nmembers * sizeof(MultiXactMember));

	(void) FUNC6(RM_MULTIXACT_ID, XLOG_MULTIXACT_CREATE_ID);

	/* Now enter the information into the OFFSETs and MEMBERs logs */
	FUNC4(multi, offset, nmembers, members);

	/* Done with critical section */
	FUNC0();

	/* Store the new MultiXactId in the local cache, too */
	FUNC12(multi, nmembers, members);

	FUNC8(DEBUG2, "Create: all done");

	return multi;
}