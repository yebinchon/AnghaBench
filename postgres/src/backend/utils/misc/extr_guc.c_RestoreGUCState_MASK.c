#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  varsourceline ;
typedef  int /*<<< orphan*/  varsource ;
typedef  int /*<<< orphan*/  varscontext ;
typedef  int /*<<< orphan*/  len ;
struct TYPE_3__ {char** arg; struct TYPE_3__* previous; int /*<<< orphan*/  callback; } ;
typedef  int Size ;
typedef  int GucSource ;
typedef  int GucContext ;
typedef  TYPE_1__ ErrorContextCallback ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GUC_ACTION_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 TYPE_1__* error_context_stack ; 
 int /*<<< orphan*/  guc_restore_error_context_callback ; 
 int /*<<< orphan*/ * guc_variables ; 
 int /*<<< orphan*/  FUNC5 (int*,void*,int) ; 
 int num_guc_variables ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*,int*,int) ; 
 int FUNC8 (char*,char*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

void
FUNC10(void *gucstate)
{
	char	   *varname,
			   *varvalue,
			   *varsourcefile;
	int			varsourceline;
	GucSource	varsource;
	GucContext	varscontext;
	char	   *srcptr = (char *) gucstate;
	char	   *srcend;
	Size		len;
	int			i;
	ErrorContextCallback error_context_callback;

	/* See comment at can_skip_gucvar(). */
	for (i = 0; i < num_guc_variables; i++)
		if (!FUNC1(guc_variables[i]))
			FUNC0(guc_variables[i]);

	/* First item is the length of the subsequent data */
	FUNC5(&len, gucstate, sizeof(len));

	srcptr += sizeof(len);
	srcend = srcptr + len;

	/* If the GUC value check fails, we want errors to show useful context. */
	error_context_callback.callback = guc_restore_error_context_callback;
	error_context_callback.previous = error_context_stack;
	error_context_callback.arg = NULL;
	error_context_stack = &error_context_callback;

	while (srcptr < srcend)
	{
		int			result;
		char	   *error_context_name_and_value[2];

		varname = FUNC6(&srcptr, srcend);
		varvalue = FUNC6(&srcptr, srcend);
		varsourcefile = FUNC6(&srcptr, srcend);
		if (varsourcefile[0])
			FUNC7(&srcptr, srcend,
								 &varsourceline, sizeof(varsourceline));
		else
			varsourceline = 0;
		FUNC7(&srcptr, srcend,
							 &varsource, sizeof(varsource));
		FUNC7(&srcptr, srcend,
							 &varscontext, sizeof(varscontext));

		error_context_name_and_value[0] = varname;
		error_context_name_and_value[1] = varvalue;
		error_context_callback.arg = &error_context_name_and_value[0];
		result = FUNC8(varname, varvalue, varscontext, varsource,
								   GUC_ACTION_SET, true, ERROR, true);
		if (result <= 0)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INTERNAL_ERROR),
					 FUNC4("parameter \"%s\" could not be set", varname)));
		if (varsourcefile[0])
			FUNC9(varname, varsourcefile, varsourceline);
		error_context_callback.arg = NULL;
	}

	error_context_stack = error_context_callback.previous;
}