#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int* tts_isnull; int* tts_values; } ;
typedef  TYPE_2__ TupleTableSlot ;
typedef  TYPE_3__* TupleDesc ;
struct TYPE_28__ {int /*<<< orphan*/  es_query_cxt; TYPE_4__* es_result_relation_info; } ;
struct TYPE_27__ {TYPE_2__* ecxt_scantuple; } ;
struct TYPE_26__ {scalar_t__ attgenerated; int /*<<< orphan*/  attlen; int /*<<< orphan*/  attbyval; } ;
struct TYPE_25__ {int /*<<< orphan*/ ** ri_GeneratedExprs; int /*<<< orphan*/  ri_RelationDesc; } ;
struct TYPE_24__ {int natts; TYPE_1__* constr; } ;
struct TYPE_22__ {scalar_t__ has_generated_stored; } ;
typedef  TYPE_4__ ResultRelInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_5__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_6__ ExprContext ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_7__ EState ;
typedef  int Datum ;

/* Variables and functions */
 scalar_t__ ATTRIBUTE_GENERATED_STORED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_6__* FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC11 (TYPE_3__*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int*,int) ; 
 int* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 

void
FUNC18(EState *estate, TupleTableSlot *slot)
{
	ResultRelInfo *resultRelInfo = estate->es_result_relation_info;
	Relation	rel = resultRelInfo->ri_RelationDesc;
	TupleDesc	tupdesc = FUNC9(rel);
	int			natts = tupdesc->natts;
	MemoryContext oldContext;
	Datum	   *values;
	bool	   *nulls;

	FUNC0(tupdesc->constr && tupdesc->constr->has_generated_stored);

	/*
	 * If first time through for this result relation, build expression
	 * nodetrees for rel's stored generation expressions.  Keep them in the
	 * per-query memory context so they'll survive throughout the query.
	 */
	if (resultRelInfo->ri_GeneratedExprs == NULL)
	{
		oldContext = FUNC8(estate->es_query_cxt);

		resultRelInfo->ri_GeneratedExprs =
			(ExprState **) FUNC16(natts * sizeof(ExprState *));

		for (int i = 0; i < natts; i++)
		{
			if (FUNC11(tupdesc, i)->attgenerated == ATTRIBUTE_GENERATED_STORED)
			{
				Expr	   *expr;

				expr = (Expr *) FUNC12(rel, i + 1);
				if (expr == NULL)
					FUNC14(ERROR, "no generation expression found for column number %d of table \"%s\"",
						 i + 1, FUNC10(rel));

				resultRelInfo->ri_GeneratedExprs[i] = FUNC4(expr, estate);
			}
		}

		FUNC8(oldContext);
	}

	oldContext = FUNC8(FUNC7(estate));

	values = FUNC16(sizeof(*values) * natts);
	nulls = FUNC16(sizeof(*nulls) * natts);

	FUNC17(slot);
	FUNC15(nulls, slot->tts_isnull, sizeof(*nulls) * natts);

	for (int i = 0; i < natts; i++)
	{
		Form_pg_attribute attr = FUNC11(tupdesc, i);

		if (attr->attgenerated == ATTRIBUTE_GENERATED_STORED)
		{
			ExprContext *econtext;
			Datum		val;
			bool		isnull;

			econtext = FUNC6(estate);
			econtext->ecxt_scantuple = slot;

			val = FUNC2(resultRelInfo->ri_GeneratedExprs[i], econtext, &isnull);

			values[i] = val;
			nulls[i] = isnull;
		}
		else
		{
			if (!nulls[i])
				values[i] = FUNC13(slot->tts_values[i], attr->attbyval, attr->attlen);
		}
	}

	FUNC1(slot);
	FUNC15(slot->tts_values, values, sizeof(*values) * natts);
	FUNC15(slot->tts_isnull, nulls, sizeof(*nulls) * natts);
	FUNC5(slot);
	FUNC3(slot);

	FUNC8(oldContext);
}