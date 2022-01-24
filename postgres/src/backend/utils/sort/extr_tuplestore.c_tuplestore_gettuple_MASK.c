#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t activeptr; int status; void** memtuples; int /*<<< orphan*/  myfile; int /*<<< orphan*/  truncated; int /*<<< orphan*/  writepos_offset; int /*<<< orphan*/  writepos_file; int /*<<< orphan*/  memtupdeleted; int /*<<< orphan*/  memtupcount; TYPE_2__* readptrs; } ;
typedef  TYPE_1__ Tuplestorestate ;
struct TYPE_7__ {int eflags; int eof_reached; long offset; int /*<<< orphan*/  file; int /*<<< orphan*/  current; } ;
typedef  TYPE_2__ TSReadPointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int EXEC_FLAG_BACKWARD ; 
 void* FUNC3 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
#define  TSS_INMEM 130 
#define  TSS_READFILE 129 
#define  TSS_WRITEFILE 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 unsigned int FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static void *
FUNC9(Tuplestorestate *state, bool forward,
					bool *should_free)
{
	TSReadPointer *readptr = &state->readptrs[state->activeptr];
	unsigned int tuplen;
	void	   *tup;

	FUNC0(forward || (readptr->eflags & EXEC_FLAG_BACKWARD));

	switch (state->status)
	{
		case TSS_INMEM:
			*should_free = false;
			if (forward)
			{
				if (readptr->eof_reached)
					return NULL;
				if (readptr->current < state->memtupcount)
				{
					/* We have another tuple, so return it */
					return state->memtuples[readptr->current++];
				}
				readptr->eof_reached = true;
				return NULL;
			}
			else
			{
				/*
				 * if all tuples are fetched already then we return last
				 * tuple, else tuple before last returned.
				 */
				if (readptr->eof_reached)
				{
					readptr->current = state->memtupcount;
					readptr->eof_reached = false;
				}
				else
				{
					if (readptr->current <= state->memtupdeleted)
					{
						FUNC0(!state->truncated);
						return NULL;
					}
					readptr->current--; /* last returned tuple */
				}
				if (readptr->current <= state->memtupdeleted)
				{
					FUNC0(!state->truncated);
					return NULL;
				}
				return state->memtuples[readptr->current - 1];
			}
			break;

		case TSS_WRITEFILE:
			/* Skip state change if we'll just return NULL */
			if (readptr->eof_reached && forward)
				return NULL;

			/*
			 * Switch from writing to reading.
			 */
			FUNC2(state->myfile,
						&state->writepos_file, &state->writepos_offset);
			if (!readptr->eof_reached)
				if (FUNC1(state->myfile,
								readptr->file, readptr->offset,
								SEEK_SET) != 0)
					FUNC5(ERROR,
							(FUNC6(),
							 FUNC7("could not seek in tuplestore temporary file: %m")));
			state->status = TSS_READFILE;
			/* FALLTHROUGH */

		case TSS_READFILE:
			*should_free = true;
			if (forward)
			{
				if ((tuplen = FUNC8(state, true)) != 0)
				{
					tup = FUNC3(state, tuplen);
					return tup;
				}
				else
				{
					readptr->eof_reached = true;
					return NULL;
				}
			}

			/*
			 * Backward.
			 *
			 * if all tuples are fetched already then we return last tuple,
			 * else tuple before last returned.
			 *
			 * Back up to fetch previously-returned tuple's ending length
			 * word. If seek fails, assume we are at start of file.
			 */
			if (FUNC1(state->myfile, 0, -(long) sizeof(unsigned int),
							SEEK_CUR) != 0)
			{
				/* even a failed backwards fetch gets you out of eof state */
				readptr->eof_reached = false;
				FUNC0(!state->truncated);
				return NULL;
			}
			tuplen = FUNC8(state, false);

			if (readptr->eof_reached)
			{
				readptr->eof_reached = false;
				/* We will return the tuple returned before returning NULL */
			}
			else
			{
				/*
				 * Back up to get ending length word of tuple before it.
				 */
				if (FUNC1(state->myfile, 0,
								-(long) (tuplen + 2 * sizeof(unsigned int)),
								SEEK_CUR) != 0)
				{
					/*
					 * If that fails, presumably the prev tuple is the first
					 * in the file.  Back up so that it becomes next to read
					 * in forward direction (not obviously right, but that is
					 * what in-memory case does).
					 */
					if (FUNC1(state->myfile, 0,
									-(long) (tuplen + sizeof(unsigned int)),
									SEEK_CUR) != 0)
						FUNC5(ERROR,
								(FUNC6(),
								 FUNC7("could not seek in tuplestore temporary file: %m")));
					FUNC0(!state->truncated);
					return NULL;
				}
				tuplen = FUNC8(state, false);
			}

			/*
			 * Now we have the length of the prior tuple, back up and read it.
			 * Note: READTUP expects we are positioned after the initial
			 * length word of the tuple, so back up to that point.
			 */
			if (FUNC1(state->myfile, 0,
							-(long) tuplen,
							SEEK_CUR) != 0)
				FUNC5(ERROR,
						(FUNC6(),
						 FUNC7("could not seek in tuplestore temporary file: %m")));
			tup = FUNC3(state, tuplen);
			return tup;

		default:
			FUNC4(ERROR, "invalid tuplestore state");
			return NULL;		/* keep compiler quiet */
	}
}