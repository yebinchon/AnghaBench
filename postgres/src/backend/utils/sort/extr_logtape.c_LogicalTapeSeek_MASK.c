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
struct TYPE_8__ {int /*<<< orphan*/  next; } ;
struct TYPE_7__ {int frozen; scalar_t__ buffer_size; long curBlockNumber; int nbytes; int pos; scalar_t__ buffer; int /*<<< orphan*/  nextBlockNumber; } ;
struct TYPE_6__ {int nTapes; TYPE_2__* tapes; } ;
typedef  TYPE_1__ LogicalTapeSet ;
typedef  TYPE_2__ LogicalTape ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLCKSZ ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_4__* FUNC1 (scalar_t__) ; 
 int TapeBlockPayloadSize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,long,void*) ; 

void
FUNC4(LogicalTapeSet *lts, int tapenum,
				long blocknum, int offset)
{
	LogicalTape *lt;

	FUNC0(tapenum >= 0 && tapenum < lts->nTapes);
	lt = &lts->tapes[tapenum];
	FUNC0(lt->frozen);
	FUNC0(offset >= 0 && offset <= TapeBlockPayloadSize);
	FUNC0(lt->buffer_size == BLCKSZ);

	if (blocknum != lt->curBlockNumber)
	{
		FUNC3(lts, blocknum, (void *) lt->buffer);
		lt->curBlockNumber = blocknum;
		lt->nbytes = TapeBlockPayloadSize;
		lt->nextBlockNumber = FUNC1(lt->buffer)->next;
	}

	if (offset > lt->nbytes)
		FUNC2(ERROR, "invalid tape seek position");
	lt->pos = offset;
}