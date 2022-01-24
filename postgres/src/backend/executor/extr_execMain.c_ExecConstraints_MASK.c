#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_17__ {scalar_t__ num_check; scalar_t__ has_not_null; } ;
typedef  TYPE_2__ TupleConstr ;
struct TYPE_19__ {int /*<<< orphan*/  attname; scalar_t__ attnotnull; } ;
struct TYPE_18__ {scalar_t__ ri_PartitionRoot; scalar_t__ ri_PartitionCheck; scalar_t__ ri_RelationDesc; } ;
struct TYPE_16__ {int natts; TYPE_2__* constr; } ;
typedef  TYPE_3__ ResultRelInfo ;
typedef  scalar_t__ Relation ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_CHECK_VIOLATION ; 
 int /*<<< orphan*/  ERRCODE_NOT_NULL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 TYPE_4__* FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,char const*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int) ; 

void
FUNC21(ResultRelInfo *resultRelInfo,
				TupleTableSlot *slot, EState *estate)
{
	Relation	rel = resultRelInfo->ri_RelationDesc;
	TupleDesc	tupdesc = FUNC7(rel);
	TupleConstr *constr = tupdesc->constr;
	Bitmapset  *modifiedCols;
	Bitmapset  *insertedCols;
	Bitmapset  *updatedCols;

	FUNC0(constr || resultRelInfo->ri_PartitionCheck);

	if (constr && constr->has_not_null)
	{
		int			natts = tupdesc->natts;
		int			attrChk;

		for (attrChk = 1; attrChk <= natts; attrChk++)
		{
			Form_pg_attribute att = FUNC10(tupdesc, attrChk - 1);

			if (att->attnotnull && FUNC20(slot, attrChk))
			{
				char	   *val_desc;
				Relation	orig_rel = rel;
				TupleDesc	orig_tupdesc = FUNC7(rel);

				/*
				 * If the tuple has been routed, it's been converted to the
				 * partition's rowtype, which might differ from the root
				 * table's.  We must convert it back to the root table's
				 * rowtype so that val_desc shown error message matches the
				 * input tuple.
				 */
				if (resultRelInfo->ri_PartitionRoot)
				{
					AttrNumber *map;

					rel = resultRelInfo->ri_PartitionRoot;
					tupdesc = FUNC7(rel);
					/* a reverse map */
					map = FUNC12(orig_tupdesc,
															tupdesc);

					/*
					 * Partition-specific slot's tupdesc can't be changed, so
					 * allocate a new one.
					 */
					if (map != NULL)
						slot = FUNC19(map, slot,
													 FUNC5(tupdesc, &TTSOpsVirtual));
				}

				insertedCols = FUNC3(resultRelInfo, estate);
				updatedCols = FUNC4(resultRelInfo, estate);
				modifiedCols = FUNC11(insertedCols, updatedCols);
				val_desc = FUNC1(FUNC9(rel),
														 slot,
														 tupdesc,
														 modifiedCols,
														 64);

				FUNC13(ERROR,
						(FUNC14(ERRCODE_NOT_NULL_VIOLATION),
						 FUNC16("null value in column \"%s\" violates not-null constraint",
								FUNC6(att->attname)),
						 val_desc ? FUNC15("Failing row contains %s.", val_desc) : 0,
						 FUNC17(orig_rel, attrChk)));
			}
		}
	}

	if (constr && constr->num_check > 0)
	{
		const char *failed;

		if ((failed = FUNC2(resultRelInfo, slot, estate)) != NULL)
		{
			char	   *val_desc;
			Relation	orig_rel = rel;

			/* See the comment above. */
			if (resultRelInfo->ri_PartitionRoot)
			{
				TupleDesc	old_tupdesc = FUNC7(rel);
				AttrNumber *map;

				rel = resultRelInfo->ri_PartitionRoot;
				tupdesc = FUNC7(rel);
				/* a reverse map */
				map = FUNC12(old_tupdesc,
														tupdesc);

				/*
				 * Partition-specific slot's tupdesc can't be changed, so
				 * allocate a new one.
				 */
				if (map != NULL)
					slot = FUNC19(map, slot,
												 FUNC5(tupdesc, &TTSOpsVirtual));
			}

			insertedCols = FUNC3(resultRelInfo, estate);
			updatedCols = FUNC4(resultRelInfo, estate);
			modifiedCols = FUNC11(insertedCols, updatedCols);
			val_desc = FUNC1(FUNC9(rel),
													 slot,
													 tupdesc,
													 modifiedCols,
													 64);
			FUNC13(ERROR,
					(FUNC14(ERRCODE_CHECK_VIOLATION),
					 FUNC16("new row for relation \"%s\" violates check constraint \"%s\"",
							FUNC8(orig_rel), failed),
					 val_desc ? FUNC15("Failing row contains %s.", val_desc) : 0,
					 FUNC18(orig_rel, failed)));
		}
	}
}