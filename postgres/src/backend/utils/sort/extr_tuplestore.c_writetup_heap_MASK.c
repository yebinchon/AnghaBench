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
typedef  int /*<<< orphan*/  tuplen ;
struct TYPE_7__ {int /*<<< orphan*/  myfile; scalar_t__ backward; } ;
typedef  TYPE_1__ Tuplestorestate ;
struct TYPE_8__ {int t_len; } ;
typedef  TYPE_2__* MinimalTuple ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int MINIMAL_TUPLE_DATA_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(Tuplestorestate *state, void *tup)
{
	MinimalTuple tuple = (MinimalTuple) tup;

	/* the part of the MinimalTuple we'll write: */
	char	   *tupbody = (char *) tuple + MINIMAL_TUPLE_DATA_OFFSET;
	unsigned int tupbodylen = tuple->t_len - MINIMAL_TUPLE_DATA_OFFSET;

	/* total on-disk footprint: */
	unsigned int tuplen = tupbodylen + sizeof(int);

	if (FUNC0(state->myfile, (void *) &tuplen,
					 sizeof(tuplen)) != sizeof(tuplen))
		FUNC3(ERROR,
				(FUNC4(),
				 FUNC5("could not write to tuplestore temporary file: %m")));
	if (FUNC0(state->myfile, (void *) tupbody,
					 tupbodylen) != (size_t) tupbodylen)
		FUNC3(ERROR,
				(FUNC4(),
				 FUNC5("could not write to tuplestore temporary file: %m")));
	if (state->backward)		/* need trailing length word? */
		if (FUNC0(state->myfile, (void *) &tuplen,
						 sizeof(tuplen)) != sizeof(tuplen))
			FUNC3(ERROR,
					(FUNC4(),
					 FUNC5("could not write to tuplestore temporary file: %m")));

	FUNC1(state, FUNC2(tuple));
	FUNC6(tuple);
}