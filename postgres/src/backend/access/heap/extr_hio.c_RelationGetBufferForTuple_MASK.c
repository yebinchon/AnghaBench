#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ current_buf; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* BulkInsertState ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  HEAP_DEFAULT_FILLFACTOR ; 
 int HEAP_INSERT_SKIP_FSM ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ MaxHeapTupleSize ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ P_NEW ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  RBM_ZERO_AND_LOCK ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

Buffer
FUNC35(Relation relation, Size len,
						  Buffer otherBuffer, int options,
						  BulkInsertState bistate,
						  Buffer *vmbuffer, Buffer *vmbuffer_other)
{
	bool		use_fsm = !(options & HEAP_INSERT_SKIP_FSM);
	Buffer		buffer = InvalidBuffer;
	Page		page;
	Size		pageFreeSpace = 0,
				saveFreeSpace = 0;
	BlockNumber targetBlock,
				otherBlock;
	bool		needLock;

	len = FUNC10(len);		/* be conservative */

	/* Bulk insert is not supported for updates, only inserts. */
	FUNC0(otherBuffer == InvalidBuffer || !bistate);

	/*
	 * If we're gonna fail for oversize tuple, do it right away
	 */
	if (len > MaxHeapTupleSize)
		FUNC30(ERROR,
				(FUNC31(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC32("row is too big: size %zu, maximum size %zu",
						len, MaxHeapTupleSize)));

	/* Compute desired extra freespace due to fillfactor option */
	saveFreeSpace = FUNC24(relation,
												   HEAP_DEFAULT_FILLFACTOR);

	if (otherBuffer != InvalidBuffer)
		otherBlock = FUNC1(otherBuffer);
	else
		otherBlock = InvalidBlockNumber;	/* just to keep compiler quiet */

	/*
	 * We first try to put the tuple on the same page we last inserted a tuple
	 * on, as cached in the BulkInsertState or relcache entry.  If that
	 * doesn't work, we ask the Free Space Map to locate a suitable page.
	 * Since the FSM's info might be out of date, we have to be prepared to
	 * loop around and retry multiple times. (To insure this isn't an infinite
	 * loop, we must update the FSM with the correct amount of free space on
	 * each page that proves not to be suitable.)  If the FSM has no record of
	 * a page with enough free space, we give up and extend the relation.
	 *
	 * When use_fsm is false, we either put the tuple onto the existing target
	 * page or extend the relation.
	 */
	if (len + saveFreeSpace > MaxHeapTupleSize)
	{
		/* can't fit, don't bother asking FSM */
		targetBlock = InvalidBlockNumber;
		use_fsm = false;
	}
	else if (bistate && bistate->current_buf != InvalidBuffer)
		targetBlock = FUNC1(bistate->current_buf);
	else
		targetBlock = FUNC23(relation);

	if (targetBlock == InvalidBlockNumber && use_fsm)
	{
		/*
		 * We have no cached target page, so ask the FSM for an initial
		 * target.
		 */
		targetBlock = FUNC6(relation, len + saveFreeSpace);

		/*
		 * If the FSM knows nothing of the rel, try the last page before we
		 * give up and extend.  This avoids one-tuple-per-page syndrome during
		 * bootstrapping or in a recently-started system.
		 */
		if (targetBlock == InvalidBlockNumber)
		{
			BlockNumber nblocks = FUNC21(relation);

			if (nblocks > 0)
				targetBlock = nblocks - 1;
		}
	}

loop:
	while (targetBlock != InvalidBlockNumber)
	{
		/*
		 * Read and exclusive-lock the target block, as well as the other
		 * block if one was given, taking suitable care with lock ordering and
		 * the possibility they are the same block.
		 *
		 * If the page-level all-visible flag is set, caller will need to
		 * clear both that and the corresponding visibility map bit.  However,
		 * by the time we return, we'll have x-locked the buffer, and we don't
		 * want to do any I/O while in that state.  So we check the bit here
		 * before taking the lock, and pin the page if it appears necessary.
		 * Checking without the lock creates a risk of getting the wrong
		 * answer, so we'll have to recheck after acquiring the lock.
		 */
		if (otherBuffer == InvalidBuffer)
		{
			/* easy case */
			buffer = FUNC18(relation, targetBlock, RBM_NORMAL, bistate);
			if (FUNC14(FUNC2(buffer)))
				FUNC34(relation, targetBlock, vmbuffer);
			FUNC8(buffer, BUFFER_LOCK_EXCLUSIVE);
		}
		else if (otherBlock == targetBlock)
		{
			/* also easy case */
			buffer = otherBuffer;
			if (FUNC14(FUNC2(buffer)))
				FUNC34(relation, targetBlock, vmbuffer);
			FUNC8(buffer, BUFFER_LOCK_EXCLUSIVE);
		}
		else if (otherBlock < targetBlock)
		{
			/* lock other buffer first */
			buffer = FUNC17(relation, targetBlock);
			if (FUNC14(FUNC2(buffer)))
				FUNC34(relation, targetBlock, vmbuffer);
			FUNC8(otherBuffer, BUFFER_LOCK_EXCLUSIVE);
			FUNC8(buffer, BUFFER_LOCK_EXCLUSIVE);
		}
		else
		{
			/* lock target buffer first */
			buffer = FUNC17(relation, targetBlock);
			if (FUNC14(FUNC2(buffer)))
				FUNC34(relation, targetBlock, vmbuffer);
			FUNC8(buffer, BUFFER_LOCK_EXCLUSIVE);
			FUNC8(otherBuffer, BUFFER_LOCK_EXCLUSIVE);
		}

		/*
		 * We now have the target page (and the other buffer, if any) pinned
		 * and locked.  However, since our initial PageIsAllVisible checks
		 * were performed before acquiring the lock, the results might now be
		 * out of date, either for the selected victim buffer, or for the
		 * other buffer passed by the caller.  In that case, we'll need to
		 * give up our locks, go get the pin(s) we failed to get earlier, and
		 * re-lock.  That's pretty painful, but hopefully shouldn't happen
		 * often.
		 *
		 * Note that there's a small possibility that we didn't pin the page
		 * above but still have the correct page pinned anyway, either because
		 * we've already made a previous pass through this loop, or because
		 * caller passed us the right page anyway.
		 *
		 * Note also that it's possible that by the time we get the pin and
		 * retake the buffer locks, the visibility map bit will have been
		 * cleared by some other backend anyway.  In that case, we'll have
		 * done a bit of extra work for no gain, but there's no real harm
		 * done.
		 */
		if (otherBuffer == InvalidBuffer || targetBlock <= otherBlock)
			FUNC7(relation, buffer, otherBuffer,
								 targetBlock, otherBlock, vmbuffer,
								 vmbuffer_other);
		else
			FUNC7(relation, otherBuffer, buffer,
								 otherBlock, targetBlock, vmbuffer_other,
								 vmbuffer);

		/*
		 * Now we can check to see if there's enough free space here. If so,
		 * we're done.
		 */
		page = FUNC2(buffer);

		/*
		 * If necessary initialize page, it'll be used soon.  We could avoid
		 * dirtying the buffer here, and rely on the caller to do so whenever
		 * it puts a tuple onto the page, but there seems not much benefit in
		 * doing so.
		 */
		if (FUNC15(page))
		{
			FUNC13(page, FUNC3(buffer), 0);
			FUNC11(buffer);
		}

		pageFreeSpace = FUNC12(page);
		if (len + saveFreeSpace <= pageFreeSpace)
		{
			/* use this page as future insert target, too */
			FUNC25(relation, targetBlock);
			return buffer;
		}

		/*
		 * Not enough space, so we must give up our page locks and pin (if
		 * any) and prepare to look elsewhere.  We don't care which order we
		 * unlock the two buffers in, so this can be slightly simpler than the
		 * code above.
		 */
		FUNC8(buffer, BUFFER_LOCK_UNLOCK);
		if (otherBuffer == InvalidBuffer)
			FUNC26(buffer);
		else if (otherBlock != targetBlock)
		{
			FUNC8(otherBuffer, BUFFER_LOCK_UNLOCK);
			FUNC26(buffer);
		}

		/* Without FSM, always fall out of the loop and extend */
		if (!use_fsm)
			break;

		/*
		 * Update FSM as to condition of this page, and ask for another page
		 * to try.
		 */
		targetBlock = FUNC19(relation,
													targetBlock,
													pageFreeSpace,
													len + saveFreeSpace);
	}

	/*
	 * Have to extend the relation.
	 *
	 * We have to use a lock to ensure no one else is extending the rel at the
	 * same time, else we will both try to initialize the same new page.  We
	 * can skip locking for new or temp relations, however, since no one else
	 * could be accessing them.
	 */
	needLock = !FUNC16(relation);

	/*
	 * If we need the lock but are not able to acquire it immediately, we'll
	 * consider extending the relation by multiple blocks at a time to manage
	 * contention on the relation extension lock.  However, this only makes
	 * sense if we're using the FSM; otherwise, there's no point.
	 */
	if (needLock)
	{
		if (!use_fsm)
			FUNC9(relation, ExclusiveLock);
		else if (!FUNC5(relation, ExclusiveLock))
		{
			/* Couldn't get the lock immediately; wait for it. */
			FUNC9(relation, ExclusiveLock);

			/*
			 * Check if some other backend has extended a block for us while
			 * we were waiting on the lock.
			 */
			targetBlock = FUNC6(relation, len + saveFreeSpace);

			/*
			 * If some other waiter has already extended the relation, we
			 * don't need to do so; just use the existing freespace.
			 */
			if (targetBlock != InvalidBlockNumber)
			{
				FUNC27(relation, ExclusiveLock);
				goto loop;
			}

			/* Time to bulk-extend. */
			FUNC20(relation, bistate);
		}
	}

	/*
	 * In addition to whatever extension we performed above, we always add at
	 * least one block to satisfy our own request.
	 *
	 * XXX This does an lseek - rather expensive - but at the moment it is the
	 * only way to accurately determine how many blocks are in a relation.  Is
	 * it worth keeping an accurate file length in shared memory someplace,
	 * rather than relying on the kernel to do it for us?
	 */
	buffer = FUNC18(relation, P_NEW, RBM_ZERO_AND_LOCK, bistate);

	/*
	 * We need to initialize the empty new page.  Double-check that it really
	 * is empty (this should never happen, but if it does we don't want to
	 * risk wiping out valid data).
	 */
	page = FUNC2(buffer);

	if (!FUNC15(page))
		FUNC29(ERROR, "page %u of relation \"%s\" should be empty but is not",
			 FUNC1(buffer),
			 FUNC22(relation));

	FUNC13(page, FUNC3(buffer), 0);
	FUNC11(buffer);

	/*
	 * Release the file-extension lock; it's now OK for someone else to extend
	 * the relation some more.
	 */
	if (needLock)
		FUNC27(relation, ExclusiveLock);

	/*
	 * Lock the other buffer. It's guaranteed to be of a lower page number
	 * than the new page. To conform with the deadlock prevent rules, we ought
	 * to lock otherBuffer first, but that would give other backends a chance
	 * to put tuples on our page. To reduce the likelihood of that, attempt to
	 * lock the other buffer conditionally, that's very likely to work.
	 * Otherwise we need to lock buffers in the correct order, and retry if
	 * the space has been used in the mean time.
	 *
	 * Alternatively, we could acquire the lock on otherBuffer before
	 * extending the relation, but that'd require holding the lock while
	 * performing IO, which seems worse than an unlikely retry.
	 */
	if (otherBuffer != InvalidBuffer)
	{
		FUNC0(otherBuffer != buffer);

		if (FUNC33(!FUNC4(otherBuffer)))
		{
			FUNC8(buffer, BUFFER_LOCK_UNLOCK);
			FUNC8(otherBuffer, BUFFER_LOCK_EXCLUSIVE);
			FUNC8(buffer, BUFFER_LOCK_EXCLUSIVE);

			/*
			 * Because the buffer was unlocked for a while, it's possible,
			 * although unlikely, that the page was filled. If so, just retry
			 * from start.
			 */
			if (len > FUNC12(page))
			{
				FUNC8(otherBuffer, BUFFER_LOCK_UNLOCK);
				FUNC28(buffer);

				goto loop;
			}
		}
	}

	if (len > FUNC12(page))
	{
		/* We should not get here given the test at the top */
		FUNC29(PANIC, "tuple is too big: size %zu", len);
	}

	/*
	 * Remember the new page as our target for future insertions.
	 *
	 * XXX should we enter the new page into the free space map immediately,
	 * or just keep it for this backend's exclusive use in the short run
	 * (until VACUUM sees it)?	Seems to depend on whether you expect the
	 * current backend to make more insertions or not, which is probably a
	 * good bet most of the time.  So for now, don't add it to FSM yet.
	 */
	FUNC25(relation, FUNC1(buffer));

	return buffer;
}