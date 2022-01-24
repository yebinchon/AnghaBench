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
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  TCL_GLOBAL_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(Tcl_Interp *interp, const char *proname)
{
	/*
	 * Caution is needed here because Tcl_GetVar could overwrite the
	 * interpreter result (even though it's not really supposed to), and we
	 * can't control the order of evaluation of ereport arguments. Hence, make
	 * real sure we have our own copy of the result string before invoking
	 * Tcl_GetVar.
	 */
	char	   *emsg;
	char	   *econtext;

	emsg = FUNC6(FUNC7(FUNC0(interp)));
	econtext = FUNC7(FUNC1(interp, "errorInfo", TCL_GLOBAL_ONLY));
	FUNC2(ERROR,
			(FUNC3(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
			 FUNC5("%s", emsg),
			 FUNC4("%s\nin PL/Tcl function \"%s\"",
						econtext, proname)));
}