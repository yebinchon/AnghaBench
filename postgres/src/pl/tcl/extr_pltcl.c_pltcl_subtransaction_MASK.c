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
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
typedef  int /*<<< orphan*/  ResourceOwner ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ClientData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  CurrentResourceOwner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int TCL_ERROR ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ * const*,char*) ; 

__attribute__((used)) static int
FUNC6(ClientData cdata, Tcl_Interp *interp,
					 int objc, Tcl_Obj *const objv[])
{
	MemoryContext oldcontext = CurrentMemoryContext;
	ResourceOwner oldowner = CurrentResourceOwner;
	int			retcode;

	if (objc != 2)
	{
		FUNC5(interp, 1, objv, "command");
		return TCL_ERROR;
	}

	/*
	 * Note: we don't use pltcl_subtrans_begin and friends here because we
	 * don't want the error handling in pltcl_subtrans_abort.  But otherwise
	 * the processing should be about the same as in those functions.
	 */
	FUNC0(NULL);
	FUNC1(oldcontext);

	retcode = FUNC4(interp, objv[1], 0);

	if (retcode == TCL_ERROR)
	{
		/* Rollback the subtransaction */
		FUNC3();
	}
	else
	{
		/* Commit the subtransaction */
		FUNC2();
	}

	/* In either case, restore previous memory context and resource owner */
	FUNC1(oldcontext);
	CurrentResourceOwner = oldowner;

	return retcode;
}