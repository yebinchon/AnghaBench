#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tts_flags; int /*<<< orphan*/  tts_isnull; int /*<<< orphan*/  tts_values; int /*<<< orphan*/  tts_tupleDescriptor; scalar_t__ tts_nvalid; int /*<<< orphan*/  tts_mcxt; } ;
typedef  TYPE_1__ TupleTableSlot ;
struct TYPE_7__ {scalar_t__ tuple; scalar_t__ off; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ HeapTupleTableSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  TTS_FLAG_SHOULDFREE ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(TupleTableSlot *slot)
{
	HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;
	MemoryContext oldContext;

	FUNC0(!FUNC2(slot));

	/* If slot has its tuple already materialized, nothing to do. */
	if (FUNC3(slot))
		return;

	oldContext = FUNC1(slot->tts_mcxt);

	/*
	 * Have to deform from scratch, otherwise tts_values[] entries could point
	 * into the non-materialized tuple (which might be gone when accessed).
	 */
	slot->tts_nvalid = 0;
	hslot->off = 0;

	if (!hslot->tuple)
		hslot->tuple = FUNC5(slot->tts_tupleDescriptor,
									   slot->tts_values,
									   slot->tts_isnull);
	else
	{
		/*
		 * The tuple contained in this slot is not allocated in the memory
		 * context of the given slot (else it would have TTS_SHOULDFREE set).
		 * Copy the tuple into the given slot's memory context.
		 */
		hslot->tuple = FUNC4(hslot->tuple);
	}

	slot->tts_flags |= TTS_FLAG_SHOULDFREE;

	FUNC1(oldContext);
}