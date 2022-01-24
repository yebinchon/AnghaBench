#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  XLogRecord ;
typedef  int XLogRecPtr ;
struct TYPE_12__ {int /*<<< orphan*/  EndRecPtr; } ;
struct TYPE_11__ {TYPE_4__* reader; TYPE_2__* slot; } ;
struct TYPE_9__ {int restart_lsn; int /*<<< orphan*/  confirmed_flush; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; TYPE_1__ data; } ;
typedef  TYPE_2__ ReplicationSlot ;
typedef  TYPE_3__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,int,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC7(LogicalDecodingContext *ctx)
{
	XLogRecPtr	startptr;
	ReplicationSlot *slot = ctx->slot;

	/* Initialize from where to start reading WAL. */
	startptr = slot->data.restart_lsn;

	FUNC6(DEBUG1, "searching for logical decoding starting point, starting at %X/%X",
		 (uint32) (slot->data.restart_lsn >> 32),
		 (uint32) slot->data.restart_lsn);

	/* Wait for a consistent starting point */
	for (;;)
	{
		XLogRecord *record;
		char	   *err = NULL;

		/* the read_page callback waits for new WAL */
		record = FUNC5(ctx->reader, startptr, &err);
		if (err)
			FUNC6(ERROR, "%s", err);
		if (!record)
			FUNC6(ERROR, "no record found"); /* shouldn't happen */

		startptr = InvalidXLogRecPtr;

		FUNC2(ctx, ctx->reader);

		/* only continue till we found a consistent spot */
		if (FUNC1(ctx))
			break;

		FUNC0();
	}

	FUNC3(&slot->mutex);
	slot->data.confirmed_flush = ctx->reader->EndRecPtr;
	FUNC4(&slot->mutex);
}