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
typedef  int int32 ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_TOO_MANY_ARGUMENTS ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC_MAX_ARGS ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(const char *string, bool allowNone, List **names,
					 int *nargs, Oid *argtypes)
{
	char	   *rawname;
	char	   *ptr;
	char	   *ptr2;
	char	   *typename;
	bool		in_quote;
	bool		had_comma;
	int			paren_count;
	Oid			typeid;
	int32		typmod;

	/* We need a modifiable copy of the input string. */
	rawname = FUNC7(string);

	/* Scan to find the expected left paren; mustn't be quoted */
	in_quote = false;
	for (ptr = rawname; *ptr; ptr++)
	{
		if (*ptr == '"')
			in_quote = !in_quote;
		else if (*ptr == '(' && !in_quote)
			break;
	}
	if (*ptr == '\0')
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("expected a left parenthesis")));

	/* Separate the name and parse it into a list */
	*ptr++ = '\0';
	*names = FUNC9(rawname);

	/* Check for the trailing right parenthesis and remove it */
	ptr2 = ptr + FUNC10(ptr);
	while (--ptr2 > ptr)
	{
		if (!FUNC8(*ptr2))
			break;
	}
	if (*ptr2 != ')')
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("expected a right parenthesis")));

	*ptr2 = '\0';

	/* Separate the remaining string into comma-separated type names */
	*nargs = 0;
	had_comma = false;

	for (;;)
	{
		/* allow leading whitespace */
		while (FUNC8(*ptr))
			ptr++;
		if (*ptr == '\0')
		{
			/* End of string.  Okay unless we had a comma before. */
			if (had_comma)
				FUNC1(ERROR,
						(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
						 FUNC3("expected a type name")));
			break;
		}
		typename = ptr;
		/* Find end of type name --- end of string or comma */
		/* ... but not a quoted or parenthesized comma */
		in_quote = false;
		paren_count = 0;
		for (; *ptr; ptr++)
		{
			if (*ptr == '"')
				in_quote = !in_quote;
			else if (*ptr == ',' && !in_quote && paren_count == 0)
				break;
			else if (!in_quote)
			{
				switch (*ptr)
				{
					case '(':
					case '[':
						paren_count++;
						break;
					case ')':
					case ']':
						paren_count--;
						break;
				}
			}
		}
		if (in_quote || paren_count != 0)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC3("improper type name")));

		ptr2 = ptr;
		if (*ptr == ',')
		{
			had_comma = true;
			*ptr++ = '\0';
		}
		else
		{
			had_comma = false;
			FUNC0(*ptr == '\0');
		}
		/* Lop off trailing whitespace */
		while (--ptr2 >= typename)
		{
			if (!FUNC8(*ptr2))
				break;
			*ptr2 = '\0';
		}

		if (allowNone && FUNC6(typename, "none") == 0)
		{
			/* Special case for NONE */
			typeid = InvalidOid;
			typmod = -1;
		}
		else
		{
			/* Use full parser to resolve the type name */
			FUNC4(typename, &typeid, &typmod, false);
		}
		if (*nargs >= FUNC_MAX_ARGS)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_TOO_MANY_ARGUMENTS),
					 FUNC3("too many arguments")));

		argtypes[*nargs] = typeid;
		(*nargs)++;
	}

	FUNC5(rawname);
}