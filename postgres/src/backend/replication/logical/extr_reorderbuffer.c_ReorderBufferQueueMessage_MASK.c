#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  scalar_t__ TransactionId ;
struct TYPE_15__ {int /*<<< orphan*/  (* message ) (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,char const*) ;int /*<<< orphan*/  context; } ;
struct TYPE_12__ {int /*<<< orphan*/  message; int /*<<< orphan*/  message_size; int /*<<< orphan*/  prefix; } ;
struct TYPE_13__ {TYPE_1__ msg; } ;
struct TYPE_14__ {TYPE_2__ data; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  ReorderBufferTXN ;
typedef  TYPE_3__ ReorderBufferChange ;
typedef  TYPE_4__ ReorderBuffer ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  REORDER_BUFFER_CHANGE_MESSAGE ; 
 TYPE_3__* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  volatile,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,char const*) ; 

void
FUNC15(ReorderBuffer *rb, TransactionId xid,
						  Snapshot snapshot, XLogRecPtr lsn,
						  bool transactional, const char *prefix,
						  Size message_size, const char *message)
{
	if (transactional)
	{
		MemoryContext oldcontext;
		ReorderBufferChange *change;

		FUNC0(xid != InvalidTransactionId);

		oldcontext = FUNC1(rb->context);

		change = FUNC6(rb);
		change->action = REORDER_BUFFER_CHANGE_MESSAGE;
		change->data.msg.prefix = FUNC13(prefix);
		change->data.msg.message_size = message_size;
		change->data.msg.message = FUNC12(message_size);
		FUNC11(change->data.msg.message, message, message_size);

		FUNC7(rb, xid, lsn, change);

		FUNC1(oldcontext);
	}
	else
	{
		ReorderBufferTXN *txn = NULL;
		volatile Snapshot snapshot_now = snapshot;

		if (xid != InvalidTransactionId)
			txn = FUNC8(rb, xid, true, NULL, lsn, true);

		/* setup snapshot to allow catalog access */
		FUNC9(snapshot_now, NULL);
		FUNC5();
		{
			rb->message(rb, txn, lsn, false, prefix, message_size, message);

			FUNC10(false);
		}
		FUNC2();
		{
			FUNC10(true);
			FUNC4();
		}
		FUNC3();
	}
}