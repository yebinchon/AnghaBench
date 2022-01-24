#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  out; scalar_t__ output_plugin_private; } ;
struct TYPE_21__ {int /*<<< orphan*/  context; } ;
struct TYPE_16__ {int /*<<< orphan*/  pubtruncate; } ;
struct TYPE_20__ {TYPE_1__ pubactions; } ;
struct TYPE_17__ {int /*<<< orphan*/  restart_seqs; int /*<<< orphan*/  cascade; } ;
struct TYPE_18__ {TYPE_2__ truncate; } ;
struct TYPE_19__ {TYPE_3__ data; } ;
typedef  int /*<<< orphan*/  ReorderBufferTXN ;
typedef  TYPE_4__ ReorderBufferChange ;
typedef  TYPE_5__ RelationSyncEntry ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_6__ PGOutputData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_7__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
				  int nrelations, Relation relations[], ReorderBufferChange *change)
{
	PGOutputData *data = (PGOutputData *) ctx->output_plugin_private;
	MemoryContext old;
	RelationSyncEntry *relentry;
	int			i;
	int			nrelids;
	Oid		   *relids;

	old = FUNC1(data->context);

	relids = FUNC9(nrelations * sizeof(Oid));
	nrelids = 0;

	for (i = 0; i < nrelations; i++)
	{
		Relation	relation = relations[i];
		Oid			relid = FUNC4(relation);

		if (!FUNC6(relation))
			continue;

		relentry = FUNC5(data, relid);

		if (!relentry->pubactions.pubtruncate)
			continue;

		relids[nrelids++] = relid;
		FUNC8(ctx, relation, relentry);
	}

	if (nrelids > 0)
	{
		FUNC2(ctx, true);
		FUNC7(ctx->out,
								  nrelids,
								  relids,
								  change->data.truncate.cascade,
								  change->data.truncate.restart_seqs);
		FUNC3(ctx, true);
	}

	FUNC1(old);
	FUNC0(data->context);
}