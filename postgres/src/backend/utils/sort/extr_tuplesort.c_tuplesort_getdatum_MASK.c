#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  datumTypeLen; int /*<<< orphan*/  tuples; TYPE_1__* sortKeys; int /*<<< orphan*/  sortcontext; } ;
typedef  TYPE_2__ Tuplesortstate ;
struct TYPE_9__ {int isnull1; int /*<<< orphan*/  tuple; int /*<<< orphan*/  datum1; } ;
struct TYPE_7__ {scalar_t__ abbrev_converter; } ;
typedef  TYPE_3__ SortTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,TYPE_3__*) ; 

bool
FUNC4(Tuplesortstate *state, bool forward,
				   Datum *val, bool *isNull, Datum *abbrev)
{
	MemoryContext oldcontext = FUNC0(state->sortcontext);
	SortTuple	stup;

	if (!FUNC3(state, forward, &stup))
	{
		FUNC0(oldcontext);
		return false;
	}

	/* Ensure we copy into caller's memory context */
	FUNC0(oldcontext);

	/* Record abbreviated key for caller */
	if (state->sortKeys->abbrev_converter && abbrev)
		*abbrev = stup.datum1;

	if (stup.isnull1 || !state->tuples)
	{
		*val = stup.datum1;
		*isNull = stup.isnull1;
	}
	else
	{
		/* use stup.tuple because stup.datum1 may be an abbreviation */
		*val = FUNC2(FUNC1(stup.tuple), false, state->datumTypeLen);
		*isNull = false;
	}

	return true;
}