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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* DEFAULT_EDITOR ; 
 char* DEFAULT_EDITOR_LINENUMBER_ARG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (char*,char const*,char const*,...) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static bool
FUNC6(const char *fname, int lineno)
{
	const char *editorName;
	const char *editor_lineno_arg = NULL;
	char	   *sys;
	int			result;

	FUNC0(fname != NULL);

	/* Find an editor to use */
	editorName = FUNC2("PSQL_EDITOR");
	if (!editorName)
		editorName = FUNC2("EDITOR");
	if (!editorName)
		editorName = FUNC2("VISUAL");
	if (!editorName)
		editorName = DEFAULT_EDITOR;

	/* Get line number argument, if we need it. */
	if (lineno > 0)
	{
		editor_lineno_arg = FUNC2("PSQL_EDITOR_LINENUMBER_ARG");
#ifdef DEFAULT_EDITOR_LINENUMBER_ARG
		if (!editor_lineno_arg)
			editor_lineno_arg = DEFAULT_EDITOR_LINENUMBER_ARG;
#endif
		if (!editor_lineno_arg)
		{
			FUNC3("environment variable PSQL_EDITOR_LINENUMBER_ARG must be set to specify a line number");
			return false;
		}
	}

	/*
	 * On Unix the EDITOR value should *not* be quoted, since it might include
	 * switches, eg, EDITOR="pico -t"; it's up to the user to put quotes in it
	 * if necessary.  But this policy is not very workable on Windows, due to
	 * severe brain damage in their command shell plus the fact that standard
	 * program paths include spaces.
	 */
#ifndef WIN32
	if (lineno > 0)
		sys = FUNC4("exec %s %s%d '%s'",
					   editorName, editor_lineno_arg, lineno, fname);
	else
		sys = FUNC4("exec %s '%s'",
					   editorName, fname);
#else
	if (lineno > 0)
		sys = psprintf("\"%s\" %s%d \"%s\"",
					   editorName, editor_lineno_arg, lineno, fname);
	else
		sys = psprintf("\"%s\" \"%s\"",
					   editorName, fname);
#endif
	result = FUNC5(sys);
	if (result == -1)
		FUNC3("could not start editor \"%s\"", editorName);
	else if (result == 127)
		FUNC3("could not start /bin/sh");
	FUNC1(sys);

	return result == 0;
}