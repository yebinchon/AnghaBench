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
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_5__ {int /*<<< orphan*/  buf; scalar_t__ sendDescrip; int /*<<< orphan*/  tmpcontext; TYPE_1__* portal; } ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  formats; } ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_2__ DR_printtup ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char,char const*) ; 

__attribute__((used)) static void
FUNC6(DestReceiver *self, int operation, TupleDesc typeinfo)
{
	DR_printtup *myState = (DR_printtup *) self;
	Portal		portal = myState->portal;

	/*
	 * Create I/O buffer to be used for all messages.  This cannot be inside
	 * tmpcontext, since we want to re-use it across rows.
	 */
	FUNC4(&myState->buf);

	/*
	 * Create a temporary memory context that we can reset once per row to
	 * recover palloc'd memory.  This avoids any problems with leaks inside
	 * datatype output routines, and should be faster than retail pfree's
	 * anyway.
	 */
	myState->tmpcontext = FUNC0(CurrentMemoryContext,
												"printtup",
												ALLOCSET_DEFAULT_SIZES);

	if (FUNC2(FrontendProtocol) < 3)
	{
		/*
		 * Send portal name to frontend (obsolete cruft, gone in proto 3.0)
		 *
		 * If portal name not specified, use "blank" portal.
		 */
		const char *portalName = portal->name;

		if (portalName == NULL || portalName[0] == '\0')
			portalName = "blank";

		FUNC5('P', portalName);
	}

	/*
	 * If we are supposed to emit row descriptions, then send the tuple
	 * descriptor of the tuples.
	 */
	if (myState->sendDescrip)
		FUNC3(&myState->buf,
								  typeinfo,
								  FUNC1(portal),
								  portal->formats);

	/* ----------------
	 * We could set up the derived attr info at this time, but we postpone it
	 * until the first call of printtup, for 2 reasons:
	 * 1. We don't waste time (compared to the old way) if there are no
	 *	  tuples at all to output.
	 * 2. Checking in printtup allows us to handle the case that the tuples
	 *	  change type midway through (although this probably can't happen in
	 *	  the current executor).
	 * ----------------
	 */
}