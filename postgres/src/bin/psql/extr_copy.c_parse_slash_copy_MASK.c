#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct copy_options {int from; int program; int psql_inout; void* after_tofrom; int /*<<< orphan*/ * file; void* before_tofrom; } ;
struct TYPE_2__ {int /*<<< orphan*/  encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct copy_options*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct copy_options* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 void* FUNC5 (char*) ; 
 TYPE_1__ pset ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char const*,char const*,char*,char*,char,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void**,char*) ; 

__attribute__((used)) static struct copy_options *
FUNC11(const char *args)
{
	struct copy_options *result;
	char	   *token;
	const char *whitespace = " \t\n\r";
	char		nonstd_backslash = FUNC6() ? 0 : '\\';

	if (!args)
	{
		FUNC2("\\copy: arguments required");
		return NULL;
	}

	result = FUNC3(sizeof(struct copy_options));

	result->before_tofrom = FUNC5("");	/* initialize for appending */

	token = FUNC9(args, whitespace, ".,()", "\"",
					0, false, false, pset.encoding);
	if (!token)
		goto error;

	/* The following can be removed when we drop 7.3 syntax support */
	if (FUNC4(token, "binary") == 0)
	{
		FUNC10(&result->before_tofrom, token);
		token = FUNC9(NULL, whitespace, ".,()", "\"",
						0, false, false, pset.encoding);
		if (!token)
			goto error;
	}

	/* Handle COPY (query) case */
	if (token[0] == '(')
	{
		int			parens = 1;

		while (parens > 0)
		{
			FUNC10(&result->before_tofrom, " ");
			FUNC10(&result->before_tofrom, token);
			token = FUNC9(NULL, whitespace, "()", "\"'",
							nonstd_backslash, true, false, pset.encoding);
			if (!token)
				goto error;
			if (token[0] == '(')
				parens++;
			else if (token[0] == ')')
				parens--;
		}
	}

	FUNC10(&result->before_tofrom, " ");
	FUNC10(&result->before_tofrom, token);
	token = FUNC9(NULL, whitespace, ".,()", "\"",
					0, false, false, pset.encoding);
	if (!token)
		goto error;

	/*
	 * strtokx() will not have returned a multi-character token starting with
	 * '.', so we don't need strcmp() here.  Likewise for '(', etc, below.
	 */
	if (token[0] == '.')
	{
		/* handle schema . table */
		FUNC10(&result->before_tofrom, token);
		token = FUNC9(NULL, whitespace, ".,()", "\"",
						0, false, false, pset.encoding);
		if (!token)
			goto error;
		FUNC10(&result->before_tofrom, token);
		token = FUNC9(NULL, whitespace, ".,()", "\"",
						0, false, false, pset.encoding);
		if (!token)
			goto error;
	}

	if (token[0] == '(')
	{
		/* handle parenthesized column list */
		for (;;)
		{
			FUNC10(&result->before_tofrom, " ");
			FUNC10(&result->before_tofrom, token);
			token = FUNC9(NULL, whitespace, "()", "\"",
							0, false, false, pset.encoding);
			if (!token)
				goto error;
			if (token[0] == ')')
				break;
		}
		FUNC10(&result->before_tofrom, " ");
		FUNC10(&result->before_tofrom, token);
		token = FUNC9(NULL, whitespace, ".,()", "\"",
						0, false, false, pset.encoding);
		if (!token)
			goto error;
	}

	if (FUNC4(token, "from") == 0)
		result->from = true;
	else if (FUNC4(token, "to") == 0)
		result->from = false;
	else
		goto error;

	/* { 'filename' | PROGRAM 'command' | STDIN | STDOUT | PSTDIN | PSTDOUT } */
	token = FUNC9(NULL, whitespace, ";", "'",
					0, false, false, pset.encoding);
	if (!token)
		goto error;

	if (FUNC4(token, "program") == 0)
	{
		int			toklen;

		token = FUNC9(NULL, whitespace, ";", "'",
						0, false, false, pset.encoding);
		if (!token)
			goto error;

		/*
		 * The shell command must be quoted. This isn't fool-proof, but
		 * catches most quoting errors.
		 */
		toklen = FUNC8(token);
		if (token[0] != '\'' || toklen < 2 || token[toklen - 1] != '\'')
			goto error;

		FUNC7(token, '\'', 0, pset.encoding);

		result->program = true;
		result->file = FUNC5(token);
	}
	else if (FUNC4(token, "stdin") == 0 ||
			 FUNC4(token, "stdout") == 0)
	{
		result->file = NULL;
	}
	else if (FUNC4(token, "pstdin") == 0 ||
			 FUNC4(token, "pstdout") == 0)
	{
		result->psql_inout = true;
		result->file = NULL;
	}
	else
	{
		/* filename can be optionally quoted */
		FUNC7(token, '\'', 0, pset.encoding);
		result->file = FUNC5(token);
		FUNC0(&result->file);
	}

	/* Collect the rest of the line (COPY options) */
	token = FUNC9(NULL, "", NULL, NULL,
					0, false, false, pset.encoding);
	if (token)
		result->after_tofrom = FUNC5(token);

	return result;

error:
	if (token)
		FUNC2("\\copy: parse error at \"%s\"", token);
	else
		FUNC2("\\copy: parse error at end of line");
	FUNC1(result);

	return NULL;
}