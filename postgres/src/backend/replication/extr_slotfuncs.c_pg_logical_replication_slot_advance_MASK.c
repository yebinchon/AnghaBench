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
typedef  int /*<<< orphan*/  XLogRecord ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_9__ {scalar_t__ restart_lsn; scalar_t__ confirmed_flush; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
struct TYPE_11__ {scalar_t__ EndRecPtr; } ;
struct TYPE_10__ {TYPE_3__* reader; } ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  TYPE_2__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_4__* MyReplicationSlot ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*,scalar_t__,char**) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  logical_read_local_xlog_page ; 

__attribute__((used)) static XLogRecPtr
FUNC14(XLogRecPtr moveto)
{
	LogicalDecodingContext *ctx;
	ResourceOwner old_resowner = CurrentResourceOwner;
	XLogRecPtr	startlsn;
	XLogRecPtr	retlsn;

	FUNC9();
	{
		/*
		 * Create our decoding context in fast_forward mode, passing start_lsn
		 * as InvalidXLogRecPtr, so that we start processing from my slot's
		 * confirmed_flush.
		 */
		ctx = FUNC1(InvalidXLogRecPtr,
									NIL,
									true,	/* fast_forward */
									logical_read_local_xlog_page,
									NULL, NULL, NULL);

		/*
		 * Start reading at the slot's restart_lsn, which we know to point to
		 * a valid record.
		 */
		startlsn = MyReplicationSlot->data.restart_lsn;

		/* Initialize our return value in case we don't do anything */
		retlsn = MyReplicationSlot->data.confirmed_flush;

		/* invalidate non-timetravel entries */
		FUNC3();

		/* Decode at least one record, until we run out of records */
		while ((!FUNC12(startlsn) &&
				startlsn < moveto) ||
			   (!FUNC12(ctx->reader->EndRecPtr) &&
				ctx->reader->EndRecPtr < moveto))
		{
			char	   *errm = NULL;
			XLogRecord *record;

			/*
			 * Read records.  No changes are generated in fast_forward mode,
			 * but snapbuilder/slot statuses are updated properly.
			 */
			record = FUNC11(ctx->reader, startlsn, &errm);
			if (errm)
				FUNC13(ERROR, "%s", errm);

			/* Read sequentially from now on */
			startlsn = InvalidXLogRecPtr;

			/*
			 * Process the record.  Storage-level changes are ignored in
			 * fast_forward mode, but other modules (such as snapbuilder)
			 * might still have critical updates to do.
			 */
			if (record)
				FUNC5(ctx, ctx->reader);

			/* Stop once the requested target has been reached */
			if (moveto <= ctx->reader->EndRecPtr)
				break;

			FUNC0();
		}

		/*
		 * Logical decoding could have clobbered CurrentResourceOwner during
		 * transaction management, so restore the executor's value.  (This is
		 * a kluge, but it's not worth cleaning up right now.)
		 */
		CurrentResourceOwner = old_resowner;

		if (ctx->reader->EndRecPtr != InvalidXLogRecPtr)
		{
			FUNC4(moveto);

			/*
			 * If only the confirmed_flush LSN has changed the slot won't get
			 * marked as dirty by the above. Callers on the walsender
			 * interface are expected to keep track of their own progress and
			 * don't need it written out. But SQL-interface users cannot
			 * specify their own start positions and it's harder for them to
			 * keep track of their progress, so we should make more of an
			 * effort to save it for them.
			 *
			 * Dirty the slot so it's written out at the next checkpoint.
			 * We'll still lose its position on crash, as documented, but it's
			 * better than always losing the position even on clean restart.
			 */
			FUNC10();
		}

		retlsn = MyReplicationSlot->data.confirmed_flush;

		/* free context, call shutdown callback */
		FUNC2(ctx);

		FUNC3();
	}
	FUNC6();
	{
		/* clear all timetravel entries */
		FUNC3();

		FUNC8();
	}
	FUNC7();

	return retlsn;
}