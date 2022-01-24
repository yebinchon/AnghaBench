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
typedef  TYPE_1__* TupleDesc ;
struct TYPE_15__ {scalar_t__ atttypid; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_14__ {int /*<<< orphan*/  out; } ;
struct TYPE_13__ {int schema_sent; } ;
struct TYPE_12__ {int natts; } ;
typedef  TYPE_2__ RelationSyncEntry ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_3__ LogicalDecodingContext ;
typedef  TYPE_4__* Form_pg_attribute ;

/* Variables and functions */
 scalar_t__ FirstGenbkiObjectId ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(LogicalDecodingContext *ctx,
				  Relation relation, RelationSyncEntry *relentry)
{
	if (!relentry->schema_sent)
	{
		TupleDesc	desc;
		int			i;

		desc = FUNC2(relation);

		/*
		 * Write out type info if needed.  We do that only for user-created
		 * types.  We use FirstGenbkiObjectId as the cutoff, so that we only
		 * consider objects with hand-assigned OIDs to be "built in", not for
		 * instance any function or type defined in the information_schema.
		 * This is important because only hand-assigned OIDs can be expected
		 * to remain stable across major versions.
		 */
		for (i = 0; i < desc->natts; i++)
		{
			Form_pg_attribute att = FUNC3(desc, i);

			if (att->attisdropped || att->attgenerated)
				continue;

			if (att->atttypid < FirstGenbkiObjectId)
				continue;

			FUNC0(ctx, false);
			FUNC5(ctx->out, att->atttypid);
			FUNC1(ctx, false);
		}

		FUNC0(ctx, false);
		FUNC4(ctx->out, relation);
		FUNC1(ctx, false);
		relentry->schema_sent = true;
	}
}