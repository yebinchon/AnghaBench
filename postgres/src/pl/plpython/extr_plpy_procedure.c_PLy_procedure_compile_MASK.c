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
typedef  int /*<<< orphan*/  call ;
struct TYPE_3__ {char* pyname; scalar_t__ proname; int /*<<< orphan*/ * code; int /*<<< orphan*/  globals; int /*<<< orphan*/  mcxt; int /*<<< orphan*/  src; int /*<<< orphan*/  statics; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PLyProcedure ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  PLy_interp_globals ; 
 char* FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_eval_input ; 
 int /*<<< orphan*/  Py_file_input ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char*,int,char*,char*) ; 

void
FUNC12(PLyProcedure *proc, const char *src)
{
	PyObject   *crv = NULL;
	char	   *msrc;

	proc->globals = FUNC3(PLy_interp_globals);

	/*
	 * SD is private preserved data between calls. GD is global data shared by
	 * all functions
	 */
	proc->statics = FUNC4();
	if (!proc->statics)
		FUNC1(ERROR, NULL);
	FUNC5(proc->globals, "SD", proc->statics);

	/*
	 * insert the function code into the interpreter
	 */
	msrc = FUNC2(proc->pyname, src);
	/* Save the mangled source for later inclusion in tracebacks */
	proc->src = FUNC0(proc->mcxt, msrc);
	crv = FUNC6(msrc, Py_file_input, proc->globals, NULL);
	FUNC10(msrc);

	if (crv != NULL)
	{
		int			clen;
		char		call[NAMEDATALEN + 256];

		FUNC8(crv);

		/*
		 * compile a call to the function
		 */
		clen = FUNC11(call, sizeof(call), "%s()", proc->pyname);
		if (clen < 0 || clen >= sizeof(call))
			FUNC9(ERROR, "string would overflow buffer");
		proc->code = FUNC7(call, "<string>", Py_eval_input);
		if (proc->code != NULL)
			return;
	}

	if (proc->proname)
		FUNC1(ERROR, "could not compile PL/Python function \"%s\"",
				 proc->proname);
	else
		FUNC1(ERROR, "could not compile anonymous PL/Python code block");
}