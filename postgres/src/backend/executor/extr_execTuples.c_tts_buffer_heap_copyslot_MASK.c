#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ tts_ops; int /*<<< orphan*/  tts_flags; int /*<<< orphan*/  tts_mcxt; } ;
typedef  TYPE_2__ TupleTableSlot ;
struct TYPE_10__ {int /*<<< orphan*/  tupdata; int /*<<< orphan*/ * tuple; } ;
struct TYPE_12__ {TYPE_1__ base; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTupleData ;
typedef  TYPE_3__ BufferHeapTupleTableSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTS_FLAG_EMPTY ; 
 int /*<<< orphan*/  TTS_FLAG_SHOULDFREE ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(TupleTableSlot *dstslot, TupleTableSlot *srcslot)
{
	BufferHeapTupleTableSlot *bsrcslot = (BufferHeapTupleTableSlot *) srcslot;
	BufferHeapTupleTableSlot *bdstslot = (BufferHeapTupleTableSlot *) dstslot;

	/*
	 * If the source slot is of a different kind, or is a buffer slot that has
	 * been materialized / is virtual, make a new copy of the tuple. Otherwise
	 * make a new reference to the in-buffer tuple.
	 */
	if (dstslot->tts_ops != srcslot->tts_ops ||
		FUNC5(srcslot) ||
		!bsrcslot->base.tuple)
	{
		MemoryContext oldContext;

		FUNC2(dstslot);
		dstslot->tts_flags &= ~TTS_FLAG_EMPTY;
		oldContext = FUNC4(dstslot->tts_mcxt);
		bdstslot->base.tuple = FUNC3(srcslot);
		dstslot->tts_flags |= TTS_FLAG_SHOULDFREE;
		FUNC4(oldContext);
	}
	else
	{
		FUNC0(FUNC1(bsrcslot->buffer));

		FUNC7(dstslot, bsrcslot->base.tuple,
									bsrcslot->buffer, false);

		/*
		 * The HeapTupleData portion of the source tuple might be shorter
		 * lived than the destination slot. Therefore copy the HeapTuple into
		 * our slot's tupdata, which is guaranteed to live long enough (but
		 * will still point into the buffer).
		 */
		FUNC6(&bdstslot->base.tupdata, bdstslot->base.tuple, sizeof(HeapTupleData));
		bdstslot->base.tuple = &bdstslot->base.tupdata;
	}
}