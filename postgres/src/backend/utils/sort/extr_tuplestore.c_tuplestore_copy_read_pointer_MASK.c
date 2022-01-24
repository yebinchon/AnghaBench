#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int readptrcount; int eflags; int status; int activeptr; int /*<<< orphan*/  myfile; int /*<<< orphan*/  writepos_offset; int /*<<< orphan*/  writepos_file; TYPE_2__* readptrs; } ;
typedef  TYPE_1__ Tuplestorestate ;
struct TYPE_5__ {scalar_t__ eflags; int /*<<< orphan*/  offset; int /*<<< orphan*/  file; int /*<<< orphan*/  eof_reached; } ;
typedef  TYPE_2__ TSReadPointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  SEEK_SET ; 
#define  TSS_INMEM 130 
#define  TSS_READFILE 129 
#define  TSS_WRITEFILE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(Tuplestorestate *state,
							 int srcptr, int destptr)
{
	TSReadPointer *sptr = &state->readptrs[srcptr];
	TSReadPointer *dptr = &state->readptrs[destptr];

	FUNC0(srcptr >= 0 && srcptr < state->readptrcount);
	FUNC0(destptr >= 0 && destptr < state->readptrcount);

	/* Assigning to self is a no-op */
	if (srcptr == destptr)
		return;

	if (dptr->eflags != sptr->eflags)
	{
		/* Possible change of overall eflags, so copy and then recompute */
		int			eflags;
		int			i;

		*dptr = *sptr;
		eflags = state->readptrs[0].eflags;
		for (i = 1; i < state->readptrcount; i++)
			eflags |= state->readptrs[i].eflags;
		state->eflags = eflags;
	}
	else
		*dptr = *sptr;

	switch (state->status)
	{
		case TSS_INMEM:
		case TSS_WRITEFILE:
			/* no work */
			break;
		case TSS_READFILE:

			/*
			 * This case is a bit tricky since the active read pointer's
			 * position corresponds to the seek point, not what is in its
			 * variables.  Assigning to the active requires a seek, and
			 * assigning from the active requires a tell, except when
			 * eof_reached.
			 */
			if (destptr == state->activeptr)
			{
				if (dptr->eof_reached)
				{
					if (FUNC1(state->myfile,
									state->writepos_file,
									state->writepos_offset,
									SEEK_SET) != 0)
						FUNC4(ERROR,
								(FUNC5(),
								 FUNC6("could not seek in tuplestore temporary file: %m")));
				}
				else
				{
					if (FUNC1(state->myfile,
									dptr->file, dptr->offset,
									SEEK_SET) != 0)
						FUNC4(ERROR,
								(FUNC5(),
								 FUNC6("could not seek in tuplestore temporary file: %m")));
				}
			}
			else if (srcptr == state->activeptr)
			{
				if (!dptr->eof_reached)
					FUNC2(state->myfile,
								&dptr->file,
								&dptr->offset);
			}
			break;
		default:
			FUNC3(ERROR, "invalid tuplestore state");
			break;
	}
}