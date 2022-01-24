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
struct TYPE_4__ {int readptrcount; int activeptr; int status; int /*<<< orphan*/  myfile; int /*<<< orphan*/  writepos_offset; int /*<<< orphan*/  writepos_file; TYPE_2__* readptrs; } ;
typedef  TYPE_1__ Tuplestorestate ;
struct TYPE_5__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  file; int /*<<< orphan*/  eof_reached; } ;
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
FUNC7(Tuplestorestate *state, int ptr)
{
	TSReadPointer *readptr;
	TSReadPointer *oldptr;

	FUNC0(ptr >= 0 && ptr < state->readptrcount);

	/* No work if already active */
	if (ptr == state->activeptr)
		return;

	readptr = &state->readptrs[ptr];
	oldptr = &state->readptrs[state->activeptr];

	switch (state->status)
	{
		case TSS_INMEM:
		case TSS_WRITEFILE:
			/* no work */
			break;
		case TSS_READFILE:

			/*
			 * First, save the current read position in the pointer about to
			 * become inactive.
			 */
			if (!oldptr->eof_reached)
				FUNC2(state->myfile,
							&oldptr->file,
							&oldptr->offset);

			/*
			 * We have to make the temp file's seek position equal to the
			 * logical position of the new read pointer.  In eof_reached
			 * state, that's the EOF, which we have available from the saved
			 * write position.
			 */
			if (readptr->eof_reached)
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
								readptr->file,
								readptr->offset,
								SEEK_SET) != 0)
					FUNC4(ERROR,
							(FUNC5(),
							 FUNC6("could not seek in tuplestore temporary file: %m")));
			}
			break;
		default:
			FUNC3(ERROR, "invalid tuplestore state");
			break;
	}

	state->activeptr = ptr;
}