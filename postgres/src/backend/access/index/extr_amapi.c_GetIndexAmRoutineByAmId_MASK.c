#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  regproc ;
struct TYPE_2__ {scalar_t__ amtype; int /*<<< orphan*/  amname; int /*<<< orphan*/  amhandler; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  IndexAmRoutine ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_am ;

/* Variables and functions */
 int /*<<< orphan*/  AMOID ; 
 scalar_t__ AMTYPE_INDEX ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,...) ; 

IndexAmRoutine *
FUNC12(Oid amoid, bool noerror)
{
	HeapTuple	tuple;
	Form_pg_am	amform;
	regproc		amhandler;

	/* Get handler function OID for the access method */
	tuple = FUNC7(AMOID, FUNC4(amoid));
	if (!FUNC2(tuple))
	{
		if (noerror)
			return NULL;
		FUNC8(ERROR, "cache lookup failed for access method %u",
			 amoid);
	}
	amform = (Form_pg_am) FUNC0(tuple);

	/* Check if it's an index access method as opposed to some other AM */
	if (amform->amtype != AMTYPE_INDEX)
	{
		if (noerror)
		{
			FUNC6(tuple);
			return NULL;
		}
		FUNC9(ERROR,
				(FUNC10(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC11("access method \"%s\" is not of type %s",
						FUNC3(amform->amname), "INDEX")));
	}

	amhandler = amform->amhandler;

	/* Complain if handler OID is invalid */
	if (!FUNC5(amhandler))
	{
		if (noerror)
		{
			FUNC6(tuple);
			return NULL;
		}
		FUNC9(ERROR,
				(FUNC10(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC11("index access method \"%s\" does not have a handler",
						FUNC3(amform->amname))));
	}

	FUNC6(tuple);

	/* And finally, call the handler function to get the API struct. */
	return FUNC1(amhandler);
}