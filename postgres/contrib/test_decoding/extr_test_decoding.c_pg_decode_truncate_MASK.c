#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int xact_wrote_changes; int /*<<< orphan*/  context; scalar_t__ skip_empty_xacts; } ;
typedef  TYPE_4__ TestDecodingData ;
struct TYPE_21__ {int /*<<< orphan*/  out; TYPE_4__* output_plugin_private; } ;
struct TYPE_20__ {TYPE_1__* rd_rel; } ;
struct TYPE_16__ {scalar_t__ cascade; scalar_t__ restart_seqs; } ;
struct TYPE_17__ {TYPE_2__ truncate; } ;
struct TYPE_19__ {TYPE_3__ data; } ;
struct TYPE_15__ {int /*<<< orphan*/  relname; int /*<<< orphan*/  relnamespace; } ;
typedef  int /*<<< orphan*/  ReorderBufferTXN ;
typedef  TYPE_5__ ReorderBufferChange ;
typedef  TYPE_6__* Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_7__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
				   int nrelations, Relation relations[], ReorderBufferChange *change)
{
	TestDecodingData *data;
	MemoryContext old;
	int			i;

	data = ctx->output_plugin_private;

	/* output BEGIN if we haven't yet */
	if (data->skip_empty_xacts && !data->xact_wrote_changes)
	{
		FUNC7(ctx, data, txn, false);
	}
	data->xact_wrote_changes = true;

	/* Avoid leaking memory by using and resetting our own context */
	old = FUNC1(data->context);

	FUNC3(ctx, true);

	FUNC5(ctx->out, "table ");

	for (i = 0; i < nrelations; i++)
	{
		if (i > 0)
			FUNC5(ctx->out, ", ");

		FUNC5(ctx->out,
							   FUNC8(FUNC6(relations[i]->rd_rel->relnamespace),
														  FUNC2(relations[i]->rd_rel->relname)));
	}

	FUNC5(ctx->out, ": TRUNCATE:");

	if (change->data.truncate.restart_seqs
		|| change->data.truncate.cascade)
	{
		if (change->data.truncate.restart_seqs)
			FUNC5(ctx->out, " restart_seqs");
		if (change->data.truncate.cascade)
			FUNC5(ctx->out, " cascade");
	}
	else
		FUNC5(ctx->out, " (no-flags)");

	FUNC1(old);
	FUNC0(data->context);

	FUNC4(ctx, true);
}