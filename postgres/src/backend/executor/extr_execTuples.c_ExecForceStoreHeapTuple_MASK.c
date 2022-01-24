#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  tts_isnull; int /*<<< orphan*/  tts_values; int /*<<< orphan*/  tts_tupleDescriptor; int /*<<< orphan*/  tts_flags; int /*<<< orphan*/  tts_mcxt; } ;
typedef  TYPE_2__ TupleTableSlot ;
struct TYPE_11__ {int /*<<< orphan*/  tuple; } ;
struct TYPE_13__ {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__ BufferHeapTupleTableSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTS_FLAG_EMPTY ; 
 int /*<<< orphan*/  TTS_FLAG_SHOULDFREE ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(HeapTuple tuple,
						TupleTableSlot *slot,
						bool shouldFree)
{
	if (FUNC6(slot))
	{
		FUNC2(tuple, slot, shouldFree);
	}
	else if (FUNC5(slot))
	{
		MemoryContext oldContext;
		BufferHeapTupleTableSlot *bslot = (BufferHeapTupleTableSlot *) slot;

		FUNC0(slot);
		slot->tts_flags &= ~TTS_FLAG_EMPTY;
		oldContext = FUNC4(slot->tts_mcxt);
		bslot->base.tuple = FUNC7(tuple);
		slot->tts_flags |= TTS_FLAG_SHOULDFREE;
		FUNC4(oldContext);

		if (shouldFree)
			FUNC9(tuple);
	}
	else
	{
		FUNC0(slot);
		FUNC8(tuple, slot->tts_tupleDescriptor,
						  slot->tts_values, slot->tts_isnull);
		FUNC3(slot);

		if (shouldFree)
		{
			FUNC1(slot);
			FUNC9(tuple);
		}
	}
}