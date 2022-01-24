#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_7__ {int nKeys; int abbrevNext; int tuples; TYPE_2__* sortKeys; TYPE_2__* onlyKey; int /*<<< orphan*/  datumTypeLen; void* datumType; int /*<<< orphan*/  readtup; int /*<<< orphan*/  writetup; int /*<<< orphan*/  copytup; int /*<<< orphan*/  comparetup; int /*<<< orphan*/  sortcontext; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_8__ {int ssup_nulls_first; int abbreviate; int /*<<< orphan*/  abbrev_converter; void* ssup_collation; int /*<<< orphan*/  ssup_cxt; } ;
typedef  int /*<<< orphan*/  SortSupportData ;
typedef  TYPE_2__* SortSupport ;
typedef  int /*<<< orphan*/  SortCoordinate ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  DATUM_SORT ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  comparetup_datum ; 
 int /*<<< orphan*/  copytup_datum ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  readtup_datum ; 
 scalar_t__ trace_sort ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  writetup_datum ; 

Tuplesortstate *
FUNC8(Oid datumType, Oid sortOperator, Oid sortCollation,
					  bool nullsFirstFlag, int workMem,
					  SortCoordinate coordinate, bool randomAccess)
{
	Tuplesortstate *state = FUNC7(workMem, coordinate,
												   randomAccess);
	MemoryContext oldcontext;
	int16		typlen;
	bool		typbyval;

	oldcontext = FUNC0(state->sortcontext);

#ifdef TRACE_SORT
	if (trace_sort)
		elog(LOG,
			 "begin datum sort: workMem = %d, randomAccess = %c",
			 workMem, randomAccess ? 't' : 'f');
#endif

	state->nKeys = 1;			/* always a one-column sort */

	FUNC3(DATUM_SORT,
								false,	/* no unique check */
								1,
								workMem,
								randomAccess,
								FUNC1(state));

	state->comparetup = comparetup_datum;
	state->copytup = copytup_datum;
	state->writetup = writetup_datum;
	state->readtup = readtup_datum;
	state->abbrevNext = 10;

	state->datumType = datumType;

	/* lookup necessary attributes of the datum type */
	FUNC5(datumType, &typlen, &typbyval);
	state->datumTypeLen = typlen;
	state->tuples = !typbyval;

	/* Prepare SortSupport data */
	state->sortKeys = (SortSupport) FUNC6(sizeof(SortSupportData));

	state->sortKeys->ssup_cxt = CurrentMemoryContext;
	state->sortKeys->ssup_collation = sortCollation;
	state->sortKeys->ssup_nulls_first = nullsFirstFlag;

	/*
	 * Abbreviation is possible here only for by-reference types.  In theory,
	 * a pass-by-value datatype could have an abbreviated form that is cheaper
	 * to compare.  In a tuple sort, we could support that, because we can
	 * always extract the original datum from the tuple as needed.  Here, we
	 * can't, because a datum sort only stores a single copy of the datum; the
	 * "tuple" field of each SortTuple is NULL.
	 */
	state->sortKeys->abbreviate = !typbyval;

	FUNC2(sortOperator, state->sortKeys);

	/*
	 * The "onlyKey" optimization cannot be used with abbreviated keys, since
	 * tie-breaker comparisons may be required.  Typically, the optimization
	 * is only of value to pass-by-value types anyway, whereas abbreviated
	 * keys are typically only of value to pass-by-reference types.
	 */
	if (!state->sortKeys->abbrev_converter)
		state->onlyKey = state->sortKeys;

	FUNC0(oldcontext);

	return state;
}