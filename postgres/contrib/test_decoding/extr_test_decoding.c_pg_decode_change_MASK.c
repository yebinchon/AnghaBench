#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_20__ {int xact_wrote_changes; int /*<<< orphan*/  context; scalar_t__ skip_empty_xacts; } ;
typedef  TYPE_5__ TestDecodingData ;
struct TYPE_23__ {int /*<<< orphan*/  relname; scalar_t__ relrewrite; } ;
struct TYPE_22__ {int /*<<< orphan*/  out; TYPE_5__* output_plugin_private; } ;
struct TYPE_18__ {TYPE_2__* oldtuple; TYPE_1__* newtuple; } ;
struct TYPE_19__ {TYPE_3__ tp; } ;
struct TYPE_21__ {int action; TYPE_4__ data; } ;
struct TYPE_17__ {int /*<<< orphan*/  tuple; } ;
struct TYPE_16__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  ReorderBufferTXN ;
typedef  TYPE_6__ ReorderBufferChange ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_7__ LogicalDecodingContext ;
typedef  TYPE_8__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int) ; 
#define  REORDER_BUFFER_CHANGE_DELETE 130 
#define  REORDER_BUFFER_CHANGE_INSERT 129 
#define  REORDER_BUFFER_CHANGE_UPDATE 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*,TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC17(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
				 Relation relation, ReorderBufferChange *change)
{
	TestDecodingData *data;
	Form_pg_class class_form;
	TupleDesc	tupdesc;
	MemoryContext old;

	data = ctx->output_plugin_private;

	/* output BEGIN if we haven't yet */
	if (data->skip_empty_xacts && !data->xact_wrote_changes)
	{
		FUNC14(ctx, data, txn, false);
	}
	data->xact_wrote_changes = true;

	class_form = FUNC7(relation);
	tupdesc = FUNC6(relation);

	/* Avoid leaking memory by using and resetting our own context */
	old = FUNC2(data->context);

	FUNC4(ctx, true);

	FUNC10(ctx->out, "table ");
	FUNC10(ctx->out,
						   FUNC15(
													  FUNC11(
																		 FUNC13(FUNC8(relation))),
													  class_form->relrewrite ?
													  FUNC12(class_form->relrewrite) :
													  FUNC3(class_form->relname)));
	FUNC9(ctx->out, ':');

	switch (change->action)
	{
		case REORDER_BUFFER_CHANGE_INSERT:
			FUNC10(ctx->out, " INSERT:");
			if (change->data.tp.newtuple == NULL)
				FUNC10(ctx->out, " (no-tuple-data)");
			else
				FUNC16(ctx->out, tupdesc,
									&change->data.tp.newtuple->tuple,
									false);
			break;
		case REORDER_BUFFER_CHANGE_UPDATE:
			FUNC10(ctx->out, " UPDATE:");
			if (change->data.tp.oldtuple != NULL)
			{
				FUNC10(ctx->out, " old-key:");
				FUNC16(ctx->out, tupdesc,
									&change->data.tp.oldtuple->tuple,
									true);
				FUNC10(ctx->out, " new-tuple:");
			}

			if (change->data.tp.newtuple == NULL)
				FUNC10(ctx->out, " (no-tuple-data)");
			else
				FUNC16(ctx->out, tupdesc,
									&change->data.tp.newtuple->tuple,
									false);
			break;
		case REORDER_BUFFER_CHANGE_DELETE:
			FUNC10(ctx->out, " DELETE:");

			/* if there was no PK, we only know that a delete happened */
			if (change->data.tp.oldtuple == NULL)
				FUNC10(ctx->out, " (no-tuple-data)");
			/* In DELETE, only the replica identity is present; display that */
			else
				FUNC16(ctx->out, tupdesc,
									&change->data.tp.oldtuple->tuple,
									true);
			break;
		default:
			FUNC0(false);
	}

	FUNC2(old);
	FUNC1(data->context);

	FUNC5(ctx, true);
}