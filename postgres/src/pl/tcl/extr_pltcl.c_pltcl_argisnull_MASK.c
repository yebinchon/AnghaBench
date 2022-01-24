#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_4__ {TYPE_1__* fcinfo; } ;
struct TYPE_3__ {int nargs; } ;
typedef  TYPE_1__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  ClientData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TCL_ERROR ; 
 scalar_t__ TCL_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ * const*,char*) ; 
 TYPE_2__* pltcl_current_call_state ; 

__attribute__((used)) static int
FUNC6(ClientData cdata, Tcl_Interp *interp,
				int objc, Tcl_Obj *const objv[])
{
	int			argno;
	FunctionCallInfo fcinfo = pltcl_current_call_state->fcinfo;

	/************************************************************
	 * Check call syntax
	 ************************************************************/
	if (objc != 2)
	{
		FUNC5(interp, 1, objv, "argno");
		return TCL_ERROR;
	}

	/************************************************************
	 * Check that we're called as a normal function
	 ************************************************************/
	if (fcinfo == NULL)
	{
		FUNC4(interp,
						 FUNC3("argisnull cannot be used in triggers", -1));
		return TCL_ERROR;
	}

	/************************************************************
	 * Get the argument number
	 ************************************************************/
	if (FUNC1(interp, objv[1], &argno) != TCL_OK)
		return TCL_ERROR;

	/************************************************************
	 * Check that the argno is valid
	 ************************************************************/
	argno--;
	if (argno < 0 || argno >= fcinfo->nargs)
	{
		FUNC4(interp,
						 FUNC3("argno out of range", -1));
		return TCL_ERROR;
	}

	/************************************************************
	 * Get the requested NULL state
	 ************************************************************/
	FUNC4(interp, FUNC2(FUNC0(argno)));
	return TCL_OK;
}