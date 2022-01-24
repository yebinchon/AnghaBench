#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int memtupcount; int /*<<< orphan*/  indexRel; TYPE_2__* memtuples; TYPE_5__* sortKeys; int /*<<< orphan*/  sortcontext; int /*<<< orphan*/  tuplecontext; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_16__ {void* (* abbrev_converter ) (void*,TYPE_5__*) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_14__ {scalar_t__ isnull1; void* datum1; TYPE_3__* tuple; } ;
typedef  TYPE_2__ SortTuple ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_3__* IndexTuple ;
typedef  void* Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,void**,int*) ; 
 void* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 void* FUNC8 (void*,TYPE_5__*) ; 

void
FUNC9(Tuplesortstate *state, Relation rel,
							  ItemPointer self, Datum *values,
							  bool *isnull)
{
	MemoryContext oldcontext = FUNC1(state->tuplecontext);
	SortTuple	stup;
	Datum		original;
	IndexTuple	tuple;

	stup.tuple = FUNC5(FUNC2(rel), values, isnull);
	tuple = ((IndexTuple) stup.tuple);
	tuple->t_tid = *self;
	FUNC3(state, FUNC0(stup.tuple));
	/* set up first-column key value */
	original = FUNC6(tuple,
							 1,
							 FUNC2(state->indexRel),
							 &stup.isnull1);

	FUNC1(state->sortcontext);

	if (!state->sortKeys || !state->sortKeys->abbrev_converter || stup.isnull1)
	{
		/*
		 * Store ordinary Datum representation, or NULL value.  If there is a
		 * converter it won't expect NULL values, and cost model is not
		 * required to account for NULL, so in that case we avoid calling
		 * converter and just set datum1 to zeroed representation (to be
		 * consistent, and to support cheap inequality tests for NULL
		 * abbreviated keys).
		 */
		stup.datum1 = original;
	}
	else if (!FUNC4(state))
	{
		/* Store abbreviated key representation */
		stup.datum1 = state->sortKeys->abbrev_converter(original,
														state->sortKeys);
	}
	else
	{
		/* Abort abbreviation */
		int			i;

		stup.datum1 = original;

		/*
		 * Set state to be consistent with never trying abbreviation.
		 *
		 * Alter datum1 representation in already-copied tuples, so as to
		 * ensure a consistent representation (current tuple was just
		 * handled).  It does not matter if some dumped tuples are already
		 * sorted on tape, since serialized tuples lack abbreviated keys
		 * (TSS_BUILDRUNS state prevents control reaching here in any case).
		 */
		for (i = 0; i < state->memtupcount; i++)
		{
			SortTuple  *mtup = &state->memtuples[i];

			tuple = mtup->tuple;
			mtup->datum1 = FUNC6(tuple,
										 1,
										 FUNC2(state->indexRel),
										 &mtup->isnull1);
		}
	}

	FUNC7(state, &stup);

	FUNC1(oldcontext);
}