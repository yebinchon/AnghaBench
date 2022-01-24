#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_19__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_18__ {int natts; } ;
typedef  TYPE_2__* IndexTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int INDEX_MAX_KEYS ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

IndexTuple
FUNC9(TupleDesc sourceDescriptor, IndexTuple source,
					 int leavenatts)
{
	TupleDesc	truncdesc;
	Datum		values[INDEX_MAX_KEYS];
	bool		isnull[INDEX_MAX_KEYS];
	IndexTuple	truncated;

	FUNC0(leavenatts <= sourceDescriptor->natts);

	/* Easy case: no truncation actually required */
	if (leavenatts == sourceDescriptor->natts)
		return FUNC1(source);

	/* Create temporary descriptor to scribble on */
	truncdesc = FUNC7(FUNC4(sourceDescriptor));
	FUNC3(truncdesc, sourceDescriptor);
	truncdesc->natts = leavenatts;

	/* Deform, form copy of tuple with fewer attributes */
	FUNC5(source, truncdesc, values, isnull);
	truncated = FUNC6(truncdesc, values, isnull);
	truncated->t_tid = source->t_tid;
	FUNC0(FUNC2(truncated) <= FUNC2(source));

	/*
	 * Cannot leak memory here, TupleDescCopy() doesn't allocate any inner
	 * structure, so, plain pfree() should clean all allocated memory
	 */
	FUNC8(truncdesc);

	return truncated;
}