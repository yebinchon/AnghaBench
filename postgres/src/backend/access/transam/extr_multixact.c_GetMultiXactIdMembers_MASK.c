#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_14__ {scalar_t__ oldestMultiXactId; scalar_t__ nextMXact; scalar_t__ nextOffset; } ;
struct TYPE_13__ {TYPE_1__* shared; } ;
struct TYPE_12__ {int status; int /*<<< orphan*/  xid; } ;
struct TYPE_11__ {scalar_t__* page_buffer; } ;
typedef  scalar_t__ MultiXactOffset ;
typedef  TYPE_2__ MultiXactMember ;
typedef  scalar_t__ MultiXactId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstMultiXactId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int MXACT_MEMBER_XACT_BITMASK ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  MultiXactGenLock ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  MultiXactMemberControlLock ; 
 TYPE_6__* MultiXactMemberCtl ; 
 int /*<<< orphan*/  MultiXactOffsetControlLock ; 
 TYPE_6__* MultiXactOffsetCtl ; 
 TYPE_7__* MultiXactState ; 
 size_t MyBackendId ; 
 scalar_t__* OldestVisibleMXactId ; 
 int FUNC13 (TYPE_6__*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,scalar_t__) ; 
 int FUNC20 (scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int,TYPE_2__*) ; 
 scalar_t__ FUNC22 (scalar_t__,int,TYPE_2__*) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (long) ; 

int
FUNC25(MultiXactId multi, MultiXactMember **members,
					  bool from_pgupgrade, bool onlyLock)
{
	int			pageno;
	int			prev_pageno;
	int			entryno;
	int			slotno;
	MultiXactOffset *offptr;
	MultiXactOffset offset;
	int			length;
	int			truelength;
	int			i;
	MultiXactId oldestMXact;
	MultiXactId nextMXact;
	MultiXactId tmpMXact;
	MultiXactOffset nextOffset;
	MultiXactMember *ptr;

	FUNC16(DEBUG2, "GetMembers: asked for %u", multi);

	if (!FUNC8(multi) || from_pgupgrade)
		return -1;

	/* See if the MultiXactId is in the local cache */
	length = FUNC20(multi, members);
	if (length >= 0)
	{
		FUNC16(DEBUG2, "GetMembers: found %s in the cache",
					FUNC22(multi, length, *members));
		return length;
	}

	/* Set our OldestVisibleMXactId[] entry if we didn't already */
	FUNC10();

	/*
	 * If we know the multi is used only for locking and not for updates, then
	 * we can skip checking if the value is older than our oldest visible
	 * multi.  It cannot possibly still be running.
	 */
	if (onlyLock &&
		FUNC9(multi, OldestVisibleMXactId[MyBackendId]))
	{
		FUNC15(DEBUG2, "GetMembers: a locker-only multi is too old");
		*members = NULL;
		return -1;
	}

	/*
	 * We check known limits on MultiXact before resorting to the SLRU area.
	 *
	 * An ID older than MultiXactState->oldestMultiXactId cannot possibly be
	 * useful; it has already been removed, or will be removed shortly, by
	 * truncation.  If one is passed, an error is raised.
	 *
	 * Also, an ID >= nextMXact shouldn't ever be seen here; if it is seen, it
	 * implies undetected ID wraparound has occurred.  This raises a hard
	 * error.
	 *
	 * Shared lock is enough here since we aren't modifying any global state.
	 * Acquire it just long enough to grab the current counter values.  We may
	 * need both nextMXact and nextOffset; see below.
	 */
	FUNC2(MultiXactGenLock, LW_SHARED);

	oldestMXact = MultiXactState->oldestMultiXactId;
	nextMXact = MultiXactState->nextMXact;
	nextOffset = MultiXactState->nextOffset;

	FUNC3(MultiXactGenLock);

	if (FUNC9(multi, oldestMXact))
	{
		FUNC17(ERROR,
				(FUNC18(ERRCODE_INTERNAL_ERROR),
				 FUNC19("MultiXactId %u does no longer exist -- apparent wraparound",
						multi)));
		return -1;
	}

	if (!FUNC9(multi, nextMXact))
		FUNC17(ERROR,
				(FUNC18(ERRCODE_INTERNAL_ERROR),
				 FUNC19("MultiXactId %u has not been created yet -- apparent wraparound",
						multi)));

	/*
	 * Find out the offset at which we need to start reading MultiXactMembers
	 * and the number of members in the multixact.  We determine the latter as
	 * the difference between this multixact's starting offset and the next
	 * one's.  However, there are some corner cases to worry about:
	 *
	 * 1. This multixact may be the latest one created, in which case there is
	 * no next one to look at.  In this case the nextOffset value we just
	 * saved is the correct endpoint.
	 *
	 * 2. The next multixact may still be in process of being filled in: that
	 * is, another process may have done GetNewMultiXactId but not yet written
	 * the offset entry for that ID.  In that scenario, it is guaranteed that
	 * the offset entry for that multixact exists (because GetNewMultiXactId
	 * won't release MultiXactGenLock until it does) but contains zero
	 * (because we are careful to pre-zero offset pages). Because
	 * GetNewMultiXactId will never return zero as the starting offset for a
	 * multixact, when we read zero as the next multixact's offset, we know we
	 * have this case.  We sleep for a bit and try again.
	 *
	 * 3. Because GetNewMultiXactId increments offset zero to offset one to
	 * handle case #2, there is an ambiguity near the point of offset
	 * wraparound.  If we see next multixact's offset is one, is that our
	 * multixact's actual endpoint, or did it end at zero with a subsequent
	 * increment?  We handle this using the knowledge that if the zero'th
	 * member slot wasn't filled, it'll contain zero, and zero isn't a valid
	 * transaction ID so it can't be a multixact member.  Therefore, if we
	 * read a zero from the members array, just ignore it.
	 *
	 * This is all pretty messy, but the mess occurs only in infrequent corner
	 * cases, so it seems better than holding the MultiXactGenLock for a long
	 * time on every multixact creation.
	 */
retry:
	FUNC2(MultiXactOffsetControlLock, LW_EXCLUSIVE);

	pageno = FUNC12(multi);
	entryno = FUNC11(multi);

	slotno = FUNC13(MultiXactOffsetCtl, pageno, true, multi);
	offptr = (MultiXactOffset *) MultiXactOffsetCtl->shared->page_buffer[slotno];
	offptr += entryno;
	offset = *offptr;

	FUNC0(offset != 0);

	/*
	 * Use the same increment rule as GetNewMultiXactId(), that is, don't
	 * handle wraparound explicitly until needed.
	 */
	tmpMXact = multi + 1;

	if (nextMXact == tmpMXact)
	{
		/* Corner case 1: there is no next multixact */
		length = nextOffset - offset;
	}
	else
	{
		MultiXactOffset nextMXOffset;

		/* handle wraparound if needed */
		if (tmpMXact < FirstMultiXactId)
			tmpMXact = FirstMultiXactId;

		prev_pageno = pageno;

		pageno = FUNC12(tmpMXact);
		entryno = FUNC11(tmpMXact);

		if (pageno != prev_pageno)
			slotno = FUNC13(MultiXactOffsetCtl, pageno, true, tmpMXact);

		offptr = (MultiXactOffset *) MultiXactOffsetCtl->shared->page_buffer[slotno];
		offptr += entryno;
		nextMXOffset = *offptr;

		if (nextMXOffset == 0)
		{
			/* Corner case 2: next multixact is still being filled in */
			FUNC3(MultiXactOffsetControlLock);
			FUNC1();
			FUNC24(1000L);
			goto retry;
		}

		length = nextMXOffset - offset;
	}

	FUNC3(MultiXactOffsetControlLock);

	ptr = (MultiXactMember *) FUNC23(length * sizeof(MultiXactMember));
	*members = ptr;

	/* Now get the members themselves. */
	FUNC2(MultiXactMemberControlLock, LW_EXCLUSIVE);

	truelength = 0;
	prev_pageno = -1;
	for (i = 0; i < length; i++, offset++)
	{
		TransactionId *xactptr;
		uint32	   *flagsptr;
		int			flagsoff;
		int			bshift;
		int			memberoff;

		pageno = FUNC7(offset);
		memberoff = FUNC6(offset);

		if (pageno != prev_pageno)
		{
			slotno = FUNC13(MultiXactMemberCtl, pageno, true, multi);
			prev_pageno = pageno;
		}

		xactptr = (TransactionId *)
			(MultiXactMemberCtl->shared->page_buffer[slotno] + memberoff);

		if (!FUNC14(*xactptr))
		{
			/* Corner case 3: we must be looking at unused slot zero */
			FUNC0(offset == 0);
			continue;
		}

		flagsoff = FUNC5(offset);
		bshift = FUNC4(offset);
		flagsptr = (uint32 *) (MultiXactMemberCtl->shared->page_buffer[slotno] + flagsoff);

		ptr[truelength].xid = *xactptr;
		ptr[truelength].status = (*flagsptr >> bshift) & MXACT_MEMBER_XACT_BITMASK;
		truelength++;
	}

	FUNC3(MultiXactMemberControlLock);

	/*
	 * Copy the result into the local cache.
	 */
	FUNC21(multi, truelength, ptr);

	FUNC16(DEBUG2, "GetMembers: no cache for %s",
				FUNC22(multi, truelength, ptr));
	return truelength;
}