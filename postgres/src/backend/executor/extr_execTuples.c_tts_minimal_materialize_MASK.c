#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  tts_flags; int /*<<< orphan*/  tts_isnull; int /*<<< orphan*/  tts_values; int /*<<< orphan*/  tts_tupleDescriptor; scalar_t__ tts_nvalid; int /*<<< orphan*/  tts_mcxt; } ;
typedef  TYPE_2__ TupleTableSlot ;
struct TYPE_13__ {int t_len; } ;
struct TYPE_10__ {char* t_len; scalar_t__ t_data; } ;
struct TYPE_12__ {TYPE_5__* mintuple; TYPE_1__ minhdr; TYPE_1__* tuple; scalar_t__ off; } ;
typedef  TYPE_3__ MinimalTupleTableSlot ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  scalar_t__ HeapTupleHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* MINIMAL_TUPLE_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  TTS_FLAG_SHOULDFREE ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 TYPE_5__* FUNC4 (TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(TupleTableSlot *slot)
{
	MinimalTupleTableSlot *mslot = (MinimalTupleTableSlot *) slot;
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
	mslot->off = 0;

	if (!mslot->mintuple)
	{
		mslot->mintuple = FUNC5(slot->tts_tupleDescriptor,
												  slot->tts_values,
												  slot->tts_isnull);
	}
	else
	{
		/*
		 * The minimal tuple contained in this slot is not allocated in the
		 * memory context of the given slot (else it would have TTS_SHOULDFREE
		 * set).  Copy the minimal tuple into the given slot's memory context.
		 */
		mslot->mintuple = FUNC4(mslot->mintuple);
	}

	slot->tts_flags |= TTS_FLAG_SHOULDFREE;

	FUNC0(mslot->tuple == &mslot->minhdr);

	mslot->minhdr.t_len = mslot->mintuple->t_len + MINIMAL_TUPLE_OFFSET;
	mslot->minhdr.t_data = (HeapTupleHeader) ((char *) mslot->mintuple - MINIMAL_TUPLE_OFFSET);

	FUNC1(oldContext);
}