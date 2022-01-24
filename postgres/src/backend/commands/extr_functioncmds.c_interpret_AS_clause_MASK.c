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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ClanguageId ; 
 int /*<<< orphan*/  ERRCODE_INVALID_FUNCTION_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ INTERNALlanguageId ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(Oid languageOid, const char *languageName,
					char *funcname, List *as,
					char **prosrc_str_p, char **probin_str_p)
{
	FUNC0(as != NIL);

	if (languageOid == ClanguageId)
	{
		/*
		 * For "C" language, store the file name in probin and, when given,
		 * the link symbol name in prosrc.  If link symbol is omitted,
		 * substitute procedure name.  We also allow link symbol to be
		 * specified as "-", since that was the habit in PG versions before
		 * 8.4, and there might be dump files out there that don't translate
		 * that back to "omitted".
		 */
		*probin_str_p = FUNC7(FUNC4(as));
		if (FUNC5(as) == 1)
			*prosrc_str_p = funcname;
		else
		{
			*prosrc_str_p = FUNC7(FUNC6(as));
			if (FUNC8(*prosrc_str_p, "-") == 0)
				*prosrc_str_p = funcname;
		}
	}
	else
	{
		/* Everything else wants the given string in prosrc. */
		*prosrc_str_p = FUNC7(FUNC4(as));
		*probin_str_p = NULL;

		if (FUNC5(as) != 1)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_INVALID_FUNCTION_DEFINITION),
					 FUNC3("only one AS item needed for language \"%s\"",
							languageName)));

		if (languageOid == INTERNALlanguageId)
		{
			/*
			 * In PostgreSQL versions before 6.5, the SQL name of the created
			 * function could not be different from the internal name, and
			 * "prosrc" wasn't used.  So there is code out there that does
			 * CREATE FUNCTION xyz AS '' LANGUAGE internal. To preserve some
			 * modicum of backwards compatibility, accept an empty "prosrc"
			 * value as meaning the supplied SQL function name.
			 */
			if (FUNC9(*prosrc_str_p) == 0)
				*prosrc_str_p = funcname;
		}
	}
}