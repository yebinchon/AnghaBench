#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  out; scalar_t__ output_plugin_private; } ;
struct TYPE_25__ {int /*<<< orphan*/  context; } ;
struct TYPE_18__ {int /*<<< orphan*/  pubdelete; int /*<<< orphan*/  pubupdate; int /*<<< orphan*/  pubinsert; } ;
struct TYPE_24__ {TYPE_1__ pubactions; } ;
struct TYPE_21__ {TYPE_3__* oldtuple; TYPE_2__* newtuple; } ;
struct TYPE_22__ {TYPE_4__ tp; } ;
struct TYPE_23__ {int action; TYPE_5__ data; } ;
struct TYPE_20__ {int /*<<< orphan*/  tuple; } ;
struct TYPE_19__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  ReorderBufferTXN ;
typedef  TYPE_6__ ReorderBufferChange ;
typedef  TYPE_7__ RelationSyncEntry ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_8__ PGOutputData ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_9__ LogicalDecodingContext ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int) ; 
#define  REORDER_BUFFER_CHANGE_DELETE 130 
#define  REORDER_BUFFER_CHANGE_INSERT 129 
#define  REORDER_BUFFER_CHANGE_UPDATE 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_7__* FUNC7 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,int /*<<< orphan*/ ,TYPE_7__*) ; 

__attribute__((used)) static void
FUNC13(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
				Relation relation, ReorderBufferChange *change)
{
	PGOutputData *data = (PGOutputData *) ctx->output_plugin_private;
	MemoryContext old;
	RelationSyncEntry *relentry;

	if (!FUNC8(relation))
		return;

	relentry = FUNC7(data, FUNC5(relation));

	/* First check the table filter */
	switch (change->action)
	{
		case REORDER_BUFFER_CHANGE_INSERT:
			if (!relentry->pubactions.pubinsert)
				return;
			break;
		case REORDER_BUFFER_CHANGE_UPDATE:
			if (!relentry->pubactions.pubupdate)
				return;
			break;
		case REORDER_BUFFER_CHANGE_DELETE:
			if (!relentry->pubactions.pubdelete)
				return;
			break;
		default:
			FUNC0(false);
	}

	/* Avoid leaking memory by using and resetting our own context */
	old = FUNC2(data->context);

	FUNC12(ctx, relation, relentry);

	/* Send the data */
	switch (change->action)
	{
		case REORDER_BUFFER_CHANGE_INSERT:
			FUNC3(ctx, true);
			FUNC10(ctx->out, relation,
									&change->data.tp.newtuple->tuple);
			FUNC4(ctx, true);
			break;
		case REORDER_BUFFER_CHANGE_UPDATE:
			{
				HeapTuple	oldtuple = change->data.tp.oldtuple ?
				&change->data.tp.oldtuple->tuple : NULL;

				FUNC3(ctx, true);
				FUNC11(ctx->out, relation, oldtuple,
										&change->data.tp.newtuple->tuple);
				FUNC4(ctx, true);
				break;
			}
		case REORDER_BUFFER_CHANGE_DELETE:
			if (change->data.tp.oldtuple)
			{
				FUNC3(ctx, true);
				FUNC9(ctx->out, relation,
										&change->data.tp.oldtuple->tuple);
				FUNC4(ctx, true);
			}
			else
				FUNC6(DEBUG1, "didn't send DELETE change because of missing oldtuple");
			break;
		default:
			FUNC0(false);
	}

	/* Cleanup */
	FUNC2(old);
	FUNC1(data->context);
}