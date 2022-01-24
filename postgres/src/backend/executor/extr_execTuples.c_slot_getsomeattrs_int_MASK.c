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
struct TYPE_9__ {int tts_nvalid; TYPE_2__* tts_ops; TYPE_1__* tts_tupleDescriptor; } ;
typedef  TYPE_3__ TupleTableSlot ;
struct TYPE_8__ {int /*<<< orphan*/  (* getsomeattrs ) (TYPE_3__*,int) ;} ;
struct TYPE_7__ {int natts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 scalar_t__ FUNC4 (int) ; 

void
FUNC5(TupleTableSlot *slot, int attnum)
{
	/* Check for caller errors */
	FUNC0(slot->tts_nvalid < attnum);	/* checked in slot_getsomeattrs */
	FUNC0(attnum > 0);

	if (FUNC4(attnum > slot->tts_tupleDescriptor->natts))
		FUNC1(ERROR, "invalid attribute number %d", attnum);

	/* Fetch as many attributes as possible from the underlying tuple. */
	slot->tts_ops->getsomeattrs(slot, attnum);

	/*
	 * If the underlying tuple doesn't have enough attributes, tuple
	 * descriptor must have the missing attributes.
	 */
	if (FUNC4(slot->tts_nvalid < attnum))
	{
		FUNC2(slot, slot->tts_nvalid, attnum);
		slot->tts_nvalid = attnum;
	}
}