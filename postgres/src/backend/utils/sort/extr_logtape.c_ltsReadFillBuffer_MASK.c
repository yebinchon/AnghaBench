#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {long next; } ;
struct TYPE_4__ {scalar_t__ nbytes; scalar_t__ buffer_size; char* buffer; long nextBlockNumber; long curBlockNumber; int /*<<< orphan*/  frozen; scalar_t__ offsetBlockNumber; scalar_t__ pos; } ;
typedef  int /*<<< orphan*/  LogicalTapeSet ;
typedef  TYPE_1__ LogicalTape ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 int FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,long,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long) ; 

__attribute__((used)) static bool
FUNC5(LogicalTapeSet *lts, LogicalTape *lt)
{
	lt->pos = 0;
	lt->nbytes = 0;

	do
	{
		char	   *thisbuf = lt->buffer + lt->nbytes;
		long		datablocknum = lt->nextBlockNumber;

		/* Fetch next block number */
		if (datablocknum == -1L)
			break;				/* EOF */
		/* Apply worker offset, needed for leader tapesets */
		datablocknum += lt->offsetBlockNumber;

		/* Read the block */
		FUNC3(lts, datablocknum, (void *) thisbuf);
		if (!lt->frozen)
			FUNC4(lts, datablocknum);
		lt->curBlockNumber = lt->nextBlockNumber;

		lt->nbytes += FUNC0(thisbuf);
		if (FUNC2(thisbuf))
		{
			lt->nextBlockNumber = -1L;
			/* EOF */
			break;
		}
		else
			lt->nextBlockNumber = FUNC1(thisbuf)->next;

		/* Advance to next block, if we have buffer space left */
	} while (lt->buffer_size - lt->nbytes > BLCKSZ);

	return (lt->nbytes > 0);
}