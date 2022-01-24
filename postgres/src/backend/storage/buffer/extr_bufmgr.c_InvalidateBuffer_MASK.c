#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_8__ {int /*<<< orphan*/  tag; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  LWLock ;
typedef  int /*<<< orphan*/  BufferTag ;
typedef  TYPE_1__ BufferDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_LOCKED ; 
 int BM_TAG_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BUF_FLAG_MASK ; 
 scalar_t__ FUNC2 (int) ; 
 int BUF_USAGECOUNT_MASK ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(BufferDesc *buf)
{
	BufferTag	oldTag;
	uint32		oldHash;		/* hash value for oldTag */
	LWLock	   *oldPartitionLock;	/* buffer partition lock for it */
	uint32		oldFlags;
	uint32		buf_state;

	/* Save the original buffer tag before dropping the spinlock */
	oldTag = buf->tag;

	buf_state = FUNC16(&buf->state);
	FUNC0(buf_state & BM_LOCKED);
	FUNC13(buf, buf_state);

	/*
	 * Need to compute the old tag's hashcode and partition lock ID. XXX is it
	 * worth storing the hashcode in BufferDesc so we need not recompute it
	 * here?  Probably not.
	 */
	oldHash = FUNC5(&oldTag);
	oldPartitionLock = FUNC3(oldHash);

retry:

	/*
	 * Acquire exclusive mapping lock in preparation for changing the buffer's
	 * association.
	 */
	FUNC9(oldPartitionLock, LW_EXCLUSIVE);

	/* Re-lock the buffer header */
	buf_state = FUNC11(buf);

	/* If it's changed while we were waiting for lock, do nothing */
	if (!FUNC1(buf->tag, oldTag))
	{
		FUNC13(buf, buf_state);
		FUNC10(oldPartitionLock);
		return;
	}

	/*
	 * We assume the only reason for it to be pinned is that someone else is
	 * flushing the page out.  Wait for them to finish.  (This could be an
	 * infinite loop if the refcount is messed up... it would be nice to time
	 * out after awhile, but there seems no way to be sure how many loops may
	 * be needed.  Note that if the other guy has pinned the buffer but not
	 * yet done StartBufferIO, WaitIO will fall through and we'll effectively
	 * be busy-looping here.)
	 */
	if (FUNC2(buf_state) != 0)
	{
		FUNC13(buf, buf_state);
		FUNC10(oldPartitionLock);
		/* safety check: should definitely not be our *own* pin */
		if (FUNC8(FUNC6(buf)) > 0)
			FUNC15(ERROR, "buffer is pinned in InvalidateBuffer");
		FUNC14(buf);
		goto retry;
	}

	/*
	 * Clear out the buffer's tag and flags.  We must do this to ensure that
	 * linear scans of the buffer array don't think the buffer is valid.
	 */
	oldFlags = buf_state & BUF_FLAG_MASK;
	FUNC7(buf->tag);
	buf_state &= ~(BUF_FLAG_MASK | BUF_USAGECOUNT_MASK);
	FUNC13(buf, buf_state);

	/*
	 * Remove the buffer from the lookup hashtable, if it was in there.
	 */
	if (oldFlags & BM_TAG_VALID)
		FUNC4(&oldTag, oldHash);

	/*
	 * Done with mapping lock.
	 */
	FUNC10(oldPartitionLock);

	/*
	 * Insert the buffer at the head of the list of free buffers.
	 */
	FUNC12(buf);
}