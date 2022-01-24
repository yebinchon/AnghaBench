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
typedef  scalar_t__ int32 ;
struct TYPE_12__ {int nKeys; int /*<<< orphan*/  indexRel; int /*<<< orphan*/  heapRel; scalar_t__ enforceUnique; TYPE_3__* sortKeys; } ;
typedef  TYPE_1__ Tuplesortstate ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_15__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_14__ {scalar_t__ abbrev_converter; } ;
struct TYPE_13__ {int isnull1; scalar_t__ tuple; int /*<<< orphan*/  datum1; } ;
typedef  TYPE_2__ SortTuple ;
typedef  TYPE_3__* SortSupport ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_4__* IndexTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ERRCODE_UNIQUE_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int INDEX_MAX_KEYS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC15(const SortTuple *a, const SortTuple *b,
					   Tuplesortstate *state)
{
	/*
	 * This is similar to comparetup_heap(), but expects index tuples.  There
	 * is also special handling for enforcing uniqueness, and special
	 * treatment for equal keys at the end.
	 */
	SortSupport sortKey = state->sortKeys;
	IndexTuple	tuple1;
	IndexTuple	tuple2;
	int			keysz;
	TupleDesc	tupDes;
	bool		equal_hasnull = false;
	int			nkey;
	int32		compare;
	Datum		datum1,
				datum2;
	bool		isnull1,
				isnull2;


	/* Compare the leading sort key */
	compare = FUNC1(a->datum1, a->isnull1,
								  b->datum1, b->isnull1,
								  sortKey);
	if (compare != 0)
		return compare;

	/* Compare additional sort keys */
	tuple1 = (IndexTuple) a->tuple;
	tuple2 = (IndexTuple) b->tuple;
	keysz = state->nKeys;
	tupDes = FUNC6(state->indexRel);

	if (sortKey->abbrev_converter)
	{
		datum1 = FUNC14(tuple1, 1, tupDes, &isnull1);
		datum2 = FUNC14(tuple2, 1, tupDes, &isnull2);

		compare = FUNC0(datum1, isnull1,
												datum2, isnull2,
												sortKey);
		if (compare != 0)
			return compare;
	}

	/* they are equal, so we only need to examine one null flag */
	if (a->isnull1)
		equal_hasnull = true;

	sortKey++;
	for (nkey = 2; nkey <= keysz; nkey++, sortKey++)
	{
		datum1 = FUNC14(tuple1, nkey, tupDes, &isnull1);
		datum2 = FUNC14(tuple2, nkey, tupDes, &isnull2);

		compare = FUNC1(datum1, isnull1,
									  datum2, isnull2,
									  sortKey);
		if (compare != 0)
			return compare;		/* done when we find unequal attributes */

		/* they are equal, so we only need to examine one null flag */
		if (isnull1)
			equal_hasnull = true;
	}

	/*
	 * If btree has asked us to enforce uniqueness, complain if two equal
	 * tuples are detected (unless there was at least one NULL field).
	 *
	 * It is sufficient to make the test here, because if two tuples are equal
	 * they *must* get compared at some stage of the sort --- otherwise the
	 * sort algorithm wouldn't have checked whether one must appear before the
	 * other.
	 */
	if (state->enforceUnique && !equal_hasnull)
	{
		Datum		values[INDEX_MAX_KEYS];
		bool		isnull[INDEX_MAX_KEYS];
		char	   *key_desc;

		/*
		 * Some rather brain-dead implementations of qsort (such as the one in
		 * QNX 4) will sometimes call the comparison routine to compare a
		 * value to itself, but we always use our own implementation, which
		 * does not.
		 */
		FUNC2(tuple1 != tuple2);

		FUNC13(tuple1, tupDes, values, isnull);

		key_desc = FUNC3(state->indexRel, values, isnull);

		FUNC8(ERROR,
				(FUNC9(ERRCODE_UNIQUE_VIOLATION),
				 FUNC11("could not create unique index \"%s\"",
						FUNC7(state->indexRel)),
				 key_desc ? FUNC10("Key %s is duplicated.", key_desc) :
				 FUNC10("Duplicate keys exist."),
				 FUNC12(state->heapRel,
									FUNC7(state->indexRel))));
	}

	/*
	 * If key values are equal, we sort on ItemPointer.  This is required for
	 * btree indexes, since heap TID is treated as an implicit last key
	 * attribute in order to ensure that all keys in the index are physically
	 * unique.
	 */
	{
		BlockNumber blk1 = FUNC4(&tuple1->t_tid);
		BlockNumber blk2 = FUNC4(&tuple2->t_tid);

		if (blk1 != blk2)
			return (blk1 < blk2) ? -1 : 1;
	}
	{
		OffsetNumber pos1 = FUNC5(&tuple1->t_tid);
		OffsetNumber pos2 = FUNC5(&tuple2->t_tid);

		if (pos1 != pos2)
			return (pos1 < pos2) ? -1 : 1;
	}

	/* ItemPointer values should never be equal */
	FUNC2(false);

	return 0;
}