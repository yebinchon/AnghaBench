#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int ndatums; scalar_t__* indexes; } ;
struct TYPE_10__ {scalar_t__ strategy; int partnatts; int /*<<< orphan*/ * partcollation; TYPE_3__* boundinfo; } ;
struct TYPE_9__ {int scan_null; int scan_default; void* bound_offsets; } ;
typedef  int StrategyNumber ;
typedef  TYPE_1__ PruneStepResult ;
typedef  TYPE_2__ PartitionPruneContext ;
typedef  TYPE_3__* PartitionBoundInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  BTEqualStrategyNumber 132 
#define  BTGreaterEqualStrategyNumber 131 
#define  BTGreaterStrategyNumber 130 
#define  BTLessEqualStrategyNumber 129 
#define  BTLessStrategyNumber 128 
 int /*<<< orphan*/  ERROR ; 
 int InvalidStrategy ; 
 scalar_t__ PARTITION_STRATEGY_LIST ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 void* FUNC8 (TYPE_3__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static PruneStepResult *
FUNC10(PartitionPruneContext *context,
						 StrategyNumber opstrategy, Datum value, int nvalues,
						 FmgrInfo *partsupfunc, Bitmapset *nullkeys)
{
	PruneStepResult *result = (PruneStepResult *) FUNC6(sizeof(PruneStepResult));
	PartitionBoundInfo boundinfo = context->boundinfo;
	int			off,
				minoff,
				maxoff;
	bool		is_equal;
	bool		inclusive = false;
	Oid		   *partcollation = context->partcollation;

	FUNC0(context->strategy == PARTITION_STRATEGY_LIST);
	FUNC0(context->partnatts == 1);

	result->scan_null = result->scan_default = false;

	if (!FUNC3(nullkeys))
	{
		/*
		 * Nulls may exist in only one partition - the partition whose
		 * accepted set of values includes null or the default partition if
		 * the former doesn't exist.
		 */
		if (FUNC7(boundinfo))
			result->scan_null = true;
		else
			result->scan_default = FUNC8(boundinfo);
		return result;
	}

	/*
	 * If there are no datums to compare keys with, but there are partitions,
	 * just return the default partition if one exists.
	 */
	if (boundinfo->ndatums == 0)
	{
		result->scan_default = FUNC8(boundinfo);
		return result;
	}

	minoff = 0;
	maxoff = boundinfo->ndatums - 1;

	/*
	 * If there are no values to compare with the datums in boundinfo, it
	 * means the caller asked for partitions for all non-null datums.  Add
	 * indexes of *all* partitions, including the default if any.
	 */
	if (nvalues == 0)
	{
		FUNC0(boundinfo->ndatums > 0);
		result->bound_offsets = FUNC1(NULL, 0,
											  boundinfo->ndatums - 1);
		result->scan_default = FUNC8(boundinfo);
		return result;
	}

	/* Special case handling of values coming from a <> operator clause. */
	if (opstrategy == InvalidStrategy)
	{
		/*
		 * First match to all bounds.  We'll remove any matching datums below.
		 */
		FUNC0(boundinfo->ndatums > 0);
		result->bound_offsets = FUNC1(NULL, 0,
											  boundinfo->ndatums - 1);

		off = FUNC9(partsupfunc, partcollation, boundinfo,
									 value, &is_equal);
		if (off >= 0 && is_equal)
		{

			/* We have a match. Remove from the result. */
			FUNC0(boundinfo->indexes[off] >= 0);
			result->bound_offsets = FUNC2(result->bound_offsets,
												   off);
		}

		/* Always include the default partition if any. */
		result->scan_default = FUNC8(boundinfo);

		return result;
	}

	/*
	 * With range queries, always include the default list partition, because
	 * list partitions divide the key space in a discontinuous manner, not all
	 * values in the given range will have a partition assigned.  This may not
	 * technically be true for some data types (e.g. integer types), however,
	 * we currently lack any sort of infrastructure to provide us with proofs
	 * that would allow us to do anything smarter here.
	 */
	if (opstrategy != BTEqualStrategyNumber)
		result->scan_default = FUNC8(boundinfo);

	switch (opstrategy)
	{
		case BTEqualStrategyNumber:
			off = FUNC9(partsupfunc,
										 partcollation,
										 boundinfo, value,
										 &is_equal);
			if (off >= 0 && is_equal)
			{
				FUNC0(boundinfo->indexes[off] >= 0);
				result->bound_offsets = FUNC4(off);
			}
			else
				result->scan_default = FUNC8(boundinfo);
			return result;

		case BTGreaterEqualStrategyNumber:
			inclusive = true;
			/* fall through */
		case BTGreaterStrategyNumber:
			off = FUNC9(partsupfunc,
										 partcollation,
										 boundinfo, value,
										 &is_equal);
			if (off >= 0)
			{
				/* We don't want the matched datum to be in the result. */
				if (!is_equal || !inclusive)
					off++;
			}
			else
			{
				/*
				 * This case means all partition bounds are greater, which in
				 * turn means that all partitions satisfy this key.
				 */
				off = 0;
			}

			/*
			 * off is greater than the numbers of datums we have partitions
			 * for.  The only possible partition that could contain a match is
			 * the default partition, but we must've set context->scan_default
			 * above anyway if one exists.
			 */
			if (off > boundinfo->ndatums - 1)
				return result;

			minoff = off;
			break;

		case BTLessEqualStrategyNumber:
			inclusive = true;
			/* fall through */
		case BTLessStrategyNumber:
			off = FUNC9(partsupfunc,
										 partcollation,
										 boundinfo, value,
										 &is_equal);
			if (off >= 0 && is_equal && !inclusive)
				off--;

			/*
			 * off is smaller than the datums of all non-default partitions.
			 * The only possible partition that could contain a match is the
			 * default partition, but we must've set context->scan_default
			 * above anyway if one exists.
			 */
			if (off < 0)
				return result;

			maxoff = off;
			break;

		default:
			FUNC5(ERROR, "invalid strategy number %d", opstrategy);
			break;
	}

	FUNC0(minoff >= 0 && maxoff >= 0);
	result->bound_offsets = FUNC1(NULL, minoff, maxoff);
	return result;
}