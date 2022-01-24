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
typedef  int /*<<< orphan*/  ClientData ;

/* Variables and functions */
 int TCL_ERROR ; 
 int TCL_OK ; 
 char* FUNC0 (int /*<<< orphan*/ * const,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ * const*,char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(ClientData cdata, Tcl_Interp *interp,
			int objc, Tcl_Obj *const objv[])
{
	char	   *tmp;
	const char *cp1;
	char	   *cp2;
	int			length;

	/************************************************************
	 * Check call syntax
	 ************************************************************/
	if (objc != 2)
	{
		FUNC3(interp, 1, objv, "string");
		return TCL_ERROR;
	}

	/************************************************************
	 * Allocate space for the maximum the string can
	 * grow to and initialize pointers
	 ************************************************************/
	cp1 = FUNC0(objv[1], &length);
	tmp = FUNC4(length * 2 + 1);
	cp2 = tmp;

	/************************************************************
	 * Walk through string and double every quote and backslash
	 ************************************************************/
	while (*cp1)
	{
		if (*cp1 == '\'')
			*cp2++ = '\'';
		else
		{
			if (*cp1 == '\\')
				*cp2++ = '\\';
		}
		*cp2++ = *cp1++;
	}

	/************************************************************
	 * Terminate the string and set it as result
	 ************************************************************/
	*cp2 = '\0';
	FUNC2(interp, FUNC1(tmp, -1));
	FUNC5(tmp);
	return TCL_OK;
}