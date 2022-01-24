#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tts_tid; int /*<<< orphan*/  tts_flags; scalar_t__ tts_nvalid; } ;
typedef  TYPE_2__ TupleTableSlot ;
struct TYPE_6__ {scalar_t__ off; int /*<<< orphan*/ * tuple; } ;
struct TYPE_8__ {int /*<<< orphan*/  buffer; TYPE_1__ base; } ;
typedef  TYPE_3__ BufferHeapTupleTableSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTS_FLAG_EMPTY ; 
 int /*<<< orphan*/  TTS_FLAG_SHOULDFREE ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(TupleTableSlot *slot)
{
	BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;

	/*
	 * Free the memory for heap tuple if allowed. A tuple coming from buffer
	 * can never be freed. But we may have materialized a tuple from buffer.
	 * Such a tuple can be freed.
	 */
	if (FUNC4(slot))
	{
		/* We should have unpinned the buffer while materializing the tuple. */
		FUNC0(!FUNC1(bslot->buffer));

		FUNC5(bslot->base.tuple);
		slot->tts_flags &= ~TTS_FLAG_SHOULDFREE;
	}

	if (FUNC1(bslot->buffer))
		FUNC3(bslot->buffer);

	slot->tts_nvalid = 0;
	slot->tts_flags |= TTS_FLAG_EMPTY;
	FUNC2(&slot->tts_tid);
	bslot->base.tuple = NULL;
	bslot->base.off = 0;
	bslot->buffer = InvalidBuffer;
}