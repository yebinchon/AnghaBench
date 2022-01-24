#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int memtupcount; TYPE_2__* memtuples; TYPE_4__* sortKeys; int /*<<< orphan*/  sortcontext; int /*<<< orphan*/  datumTypeLen; int /*<<< orphan*/  tuples; int /*<<< orphan*/  tuplecontext; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_11__ {void* (* abbrev_converter ) (void*,TYPE_4__*) ;} ;
struct TYPE_10__ {int isnull1; int /*<<< orphan*/ * tuple; void* datum1; } ;
typedef  TYPE_2__ SortTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  void* Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 void* FUNC8 (void*,TYPE_4__*) ; 

void
FUNC9(Tuplesortstate *state, Datum val, bool isNull)
{
	MemoryContext oldcontext = FUNC2(state->tuplecontext);
	SortTuple	stup;

	/*
	 * Pass-by-value types or null values are just stored directly in
	 * stup.datum1 (and stup.tuple is not used and set to NULL).
	 *
	 * Non-null pass-by-reference values need to be copied into memory we
	 * control, and possibly abbreviated. The copied value is pointed to by
	 * stup.tuple and is treated as the canonical copy (e.g. to return via
	 * tuplesort_getdatum or when writing to tape); stup.datum1 gets the
	 * abbreviated value if abbreviation is happening, otherwise it's
	 * identical to stup.tuple.
	 */

	if (isNull || !state->tuples)
	{
		/*
		 * Set datum1 to zeroed representation for NULLs (to be consistent,
		 * and to support cheap inequality tests for NULL abbreviated keys).
		 */
		stup.datum1 = !isNull ? val : (Datum) 0;
		stup.isnull1 = isNull;
		stup.tuple = NULL;		/* no separate storage */
		FUNC2(state->sortcontext);
	}
	else
	{
		Datum		original = FUNC6(val, false, state->datumTypeLen);

		stup.isnull1 = false;
		stup.tuple = FUNC0(original);
		FUNC4(state, FUNC1(stup.tuple));
		FUNC2(state->sortcontext);

		if (!state->sortKeys->abbrev_converter)
		{
			stup.datum1 = original;
		}
		else if (!FUNC5(state))
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
			 * (TSS_BUILDRUNS state prevents control reaching here in any
			 * case).
			 */
			for (i = 0; i < state->memtupcount; i++)
			{
				SortTuple  *mtup = &state->memtuples[i];

				mtup->datum1 = FUNC3(mtup->tuple);
			}
		}
	}

	FUNC7(state, &stup);

	FUNC2(oldcontext);
}