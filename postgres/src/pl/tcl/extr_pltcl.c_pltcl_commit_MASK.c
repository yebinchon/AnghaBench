#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;
typedef  int /*<<< orphan*/  ClientData ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int TCL_ERROR ; 
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTF_BEGIN ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTF_END ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC13(ClientData cdata, Tcl_Interp *interp,
			 int objc, Tcl_Obj *const objv[])
{
	MemoryContext oldcontext = CurrentMemoryContext;

	FUNC6();
	{
		FUNC7();
		FUNC8();
	}
	FUNC4();
	{
		ErrorData  *edata;

		/* Save error info */
		FUNC3(oldcontext);
		edata = FUNC0();
		FUNC1();

		/* Pass the error data to Tcl */
		FUNC12(interp, edata);
		UTF_BEGIN;
		FUNC10(interp, FUNC9(FUNC11(edata->message), -1));
		UTF_END;
		FUNC2(edata);

		return TCL_ERROR;
	}
	FUNC5();

	return TCL_OK;
}