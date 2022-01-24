#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPAQUEOID ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Oid
FUNC10(List *procname, Oid typeOid)
{
	Oid			argList[1];
	Oid			procOid;

	/*
	 * Output functions can take a single argument of the type.
	 *
	 * For backwards compatibility we allow OPAQUE in place of the actual type
	 * name; if we see this, we issue a warning and fix up the pg_proc entry.
	 */
	argList[0] = typeOid;

	procOid = FUNC1(procname, 1, argList, true);
	if (FUNC3(procOid))
		return procOid;

	/* No luck, try it with OPAQUE */
	argList[0] = OPAQUEOID;

	procOid = FUNC1(procname, 1, argList, true);

	if (FUNC3(procOid))
	{
		/* Found, but must complain and fix the pg_proc entry */
		FUNC5(WARNING,
				(FUNC7("changing argument type of function %s from \"opaque\" to %s",
						FUNC2(procname), FUNC8(typeOid))));
		FUNC4(procOid, 0, typeOid);

		/*
		 * Need CommandCounterIncrement since DefineType will likely try to
		 * alter the pg_proc tuple again.
		 */
		FUNC0();

		return procOid;
	}

	/* Use type name, not OPAQUE, in the failure message. */
	argList[0] = typeOid;

	FUNC5(ERROR,
			(FUNC6(ERRCODE_UNDEFINED_FUNCTION),
			 FUNC7("function %s does not exist",
					FUNC9(procname, 1, NIL, argList))));

	return InvalidOid;			/* keep compiler quiet */
}