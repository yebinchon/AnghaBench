#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tts_flags; int /*<<< orphan*/  tts_isnull; int /*<<< orphan*/  tts_values; int /*<<< orphan*/  tts_tupleDescriptor; scalar_t__ tts_nvalid; int /*<<< orphan*/  tts_mcxt; } ;
typedef  TYPE_2__ TupleTableSlot ;
struct TYPE_7__ {scalar_t__ tuple; scalar_t__ off; } ;
struct TYPE_9__ {int /*<<< orphan*/  buffer; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ BufferHeapTupleTableSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  TTS_FLAG_SHOULDFREE ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(TupleTableSlot *slot)
{
	BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;
	MemoryContext oldContext;

	FUNC0(!FUNC4(slot));

	/* If slot has its tuple already materialized, nothing to do. */
	if (FUNC5(slot))
		return;

	oldContext = FUNC2(slot->tts_mcxt);

	/*
	 * Have to deform from scratch, otherwise tts_values[] entries could point
	 * into the non-materialized tuple (which might be gone when accessed).
	 */
	bslot->base.off = 0;
	slot->tts_nvalid = 0;

	if (!bslot->base.tuple)
	{
		/*
		 * Normally BufferHeapTupleTableSlot should have a tuple + buffer
		 * associated with it, unless it's materialized (which would've
		 * returned above). But when it's useful to allow storing virtual
		 * tuples in a buffer slot, which then also needs to be
		 * materializable.
		 */
		bslot->base.tuple = FUNC7(slot->tts_tupleDescriptor,
											slot->tts_values,
											slot->tts_isnull);
	}
	else
	{
		bslot->base.tuple = FUNC6(bslot->base.tuple);

		/*
		 * A heap tuple stored in a BufferHeapTupleTableSlot should have a
		 * buffer associated with it, unless it's materialized or virtual.
		 */
		if (FUNC8(FUNC1(bslot->buffer)))
			FUNC3(bslot->buffer);
		bslot->buffer = InvalidBuffer;
	}

	/*
	 * We don't set TTS_FLAG_SHOULDFREE until after releasing the buffer, if
	 * any.  This avoids having a transient state that would fall foul of our
	 * assertions that a slot with TTS_FLAG_SHOULDFREE doesn't own a buffer.
	 * In the unlikely event that ReleaseBuffer() above errors out, we'd
	 * effectively leak the copied tuple, but that seems fairly harmless.
	 */
	slot->tts_flags |= TTS_FLAG_SHOULDFREE;

	FUNC2(oldContext);
}