#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {long firstblocknumber; } ;
typedef  TYPE_1__ TapeShare ;
struct TYPE_12__ {long next; } ;
struct TYPE_11__ {int writing; long offsetBlockNumber; scalar_t__ buffer; scalar_t__ nbytes; scalar_t__ buffer_size; long curBlockNumber; int frozen; long firstBlockNumber; long nextBlockNumber; scalar_t__ pos; scalar_t__ dirty; } ;
struct TYPE_10__ {int nTapes; int /*<<< orphan*/  pfile; TYPE_3__* tapes; } ;
typedef  TYPE_2__ LogicalTapeSet ;
typedef  TYPE_3__ LogicalTape ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_6__* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,long,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,long,void*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

void
FUNC11(LogicalTapeSet *lts, int tapenum, TapeShare *share)
{
	LogicalTape *lt;

	FUNC0(tapenum >= 0 && tapenum < lts->nTapes);
	lt = &lts->tapes[tapenum];
	FUNC0(lt->writing);
	FUNC0(lt->offsetBlockNumber == 0L);

	/*
	 * Completion of a write phase.  Flush last partial data block, and rewind
	 * for nondestructive read.
	 */
	if (lt->dirty)
	{
		/*
		 * As long as we've filled the buffer at least once, its contents are
		 * entirely defined from valgrind's point of view, even though
		 * contents beyond the current end point may be stale.  But it's
		 * possible - at least in the case of a parallel sort - to sort such
		 * small amount of data that we do not fill the buffer even once. Tell
		 * valgrind that its contents are defined, so it doesn't bleat.
		 */
		FUNC6(lt->buffer + lt->nbytes,
								  lt->buffer_size - lt->nbytes);

		FUNC5(lt->buffer, lt->nbytes);
		FUNC8(lts, lt->curBlockNumber, (void *) lt->buffer);
		lt->writing = false;
	}
	lt->writing = false;
	lt->frozen = true;

	/*
	 * The seek and backspace functions assume a single block read buffer.
	 * That's OK with current usage.  A larger buffer is helpful to make the
	 * read pattern of the backing file look more sequential to the OS, when
	 * we're reading from multiple tapes.  But at the end of a sort, when a
	 * tape is frozen, we only read from a single tape anyway.
	 */
	if (!lt->buffer || lt->buffer_size != BLCKSZ)
	{
		if (lt->buffer)
			FUNC10(lt->buffer);
		lt->buffer = FUNC9(BLCKSZ);
		lt->buffer_size = BLCKSZ;
	}

	/* Read the first block, or reset if tape is empty */
	lt->curBlockNumber = lt->firstBlockNumber;
	lt->pos = 0;
	lt->nbytes = 0;

	if (lt->firstBlockNumber == -1L)
		lt->nextBlockNumber = -1L;
	FUNC7(lts, lt->curBlockNumber, (void *) lt->buffer);
	if (FUNC4(lt->buffer))
		lt->nextBlockNumber = -1L;
	else
		lt->nextBlockNumber = FUNC3(lt->buffer)->next;
	lt->nbytes = FUNC2(lt->buffer);

	/* Handle extra steps when caller is to share its tapeset */
	if (share)
	{
		FUNC1(lts->pfile);
		share->firstblocknumber = lt->firstBlockNumber;
	}
}