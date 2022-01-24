#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tts_tid; int /*<<< orphan*/  tts_flags; scalar_t__ tts_nvalid; } ;
typedef  TYPE_1__ TupleTableSlot ;
struct TYPE_6__ {int /*<<< orphan*/ * tuple; scalar_t__ off; } ;
typedef  TYPE_2__ HeapTupleTableSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TTS_FLAG_EMPTY ; 
 int /*<<< orphan*/  TTS_FLAG_SHOULDFREE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(TupleTableSlot *slot)
{
	HeapTupleTableSlot *hslot = (HeapTupleTableSlot *) slot;

	/* Free the memory for the heap tuple if it's allowed. */
	if (FUNC1(slot))
	{
		FUNC2(hslot->tuple);
		slot->tts_flags &= ~TTS_FLAG_SHOULDFREE;
	}

	slot->tts_nvalid = 0;
	slot->tts_flags |= TTS_FLAG_EMPTY;
	FUNC0(&slot->tts_tid);
	hslot->off = 0;
	hslot->tuple = NULL;
}