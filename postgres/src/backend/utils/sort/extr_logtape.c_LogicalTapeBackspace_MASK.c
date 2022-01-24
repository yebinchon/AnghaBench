#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {long prev; long next; } ;
struct TYPE_7__ {int frozen; scalar_t__ buffer_size; int pos; long curBlockNumber; long firstBlockNumber; long nextBlockNumber; scalar_t__ buffer; scalar_t__ nbytes; } ;
struct TYPE_6__ {int nTapes; TYPE_2__* tapes; } ;
typedef  TYPE_1__ LogicalTapeSet ;
typedef  TYPE_2__ LogicalTape ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_4__* FUNC1 (scalar_t__) ; 
 scalar_t__ TapeBlockPayloadSize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,long,void*) ; 

size_t
FUNC4(LogicalTapeSet *lts, int tapenum, size_t size)
{
	LogicalTape *lt;
	size_t		seekpos = 0;

	FUNC0(tapenum >= 0 && tapenum < lts->nTapes);
	lt = &lts->tapes[tapenum];
	FUNC0(lt->frozen);
	FUNC0(lt->buffer_size == BLCKSZ);

	/*
	 * Easy case for seek within current block.
	 */
	if (size <= (size_t) lt->pos)
	{
		lt->pos -= (int) size;
		return size;
	}

	/*
	 * Not-so-easy case, have to walk back the chain of blocks.  This
	 * implementation would be pretty inefficient for long seeks, but we
	 * really aren't doing that (a seek over one tuple is typical).
	 */
	seekpos = (size_t) lt->pos; /* part within this block */
	while (size > seekpos)
	{
		long		prev = FUNC1(lt->buffer)->prev;

		if (prev == -1L)
		{
			/* Tried to back up beyond the beginning of tape. */
			if (lt->curBlockNumber != lt->firstBlockNumber)
				FUNC2(ERROR, "unexpected end of tape");
			lt->pos = 0;
			return seekpos;
		}

		FUNC3(lts, prev, (void *) lt->buffer);

		if (FUNC1(lt->buffer)->next != lt->curBlockNumber)
			FUNC2(ERROR, "broken tape, next of block %ld is %ld, expected %ld",
				 prev,
				 FUNC1(lt->buffer)->next,
				 lt->curBlockNumber);

		lt->nbytes = TapeBlockPayloadSize;
		lt->curBlockNumber = prev;
		lt->nextBlockNumber = FUNC1(lt->buffer)->next;

		seekpos += TapeBlockPayloadSize;
	}

	/*
	 * 'seekpos' can now be greater than 'size', because it points to the
	 * beginning the target block.  The difference is the position within the
	 * page.
	 */
	lt->pos = seekpos - size;
	return size;
}