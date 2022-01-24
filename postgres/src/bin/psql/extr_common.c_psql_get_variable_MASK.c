#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  db; int /*<<< orphan*/  vars; } ;
struct TYPE_5__ {char* data; } ;
typedef  int PsqlScanQuoteType ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  ConditionalStack ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
#define  PQUOTE_PLAIN 131 
#define  PQUOTE_SHELL_ARG 130 
#define  PQUOTE_SQL_IDENT 129 
#define  PQUOTE_SQL_LITERAL 128 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 char* FUNC11 (char const*) ; 
 TYPE_2__ pset ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

char *
FUNC13(const char *varname, PsqlScanQuoteType quote,
				  void *passthrough)
{
	char	   *result = NULL;
	const char *value;

	/* In an inactive \if branch, suppress all variable substitutions */
	if (passthrough && !FUNC6((ConditionalStack) passthrough))
		return NULL;

	value = FUNC0(pset.vars, varname);
	if (!value)
		return NULL;

	switch (quote)
	{
		case PQUOTE_PLAIN:
			result = FUNC11(value);
			break;
		case PQUOTE_SQL_LITERAL:
		case PQUOTE_SQL_IDENT:
			{
				/*
				 * For these cases, we use libpq's quoting functions, which
				 * assume the string is in the connection's client encoding.
				 */
				char	   *escaped_value;

				if (!pset.db)
				{
					FUNC9("cannot escape without active connection");
					return NULL;
				}

				if (quote == PQUOTE_SQL_LITERAL)
					escaped_value =
						FUNC3(pset.db, value, FUNC12(value));
				else
					escaped_value =
						FUNC2(pset.db, value, FUNC12(value));

				if (escaped_value == NULL)
				{
					const char *error = FUNC1(pset.db);

					FUNC10("%s", error);
					return NULL;
				}

				/*
				 * Rather than complicate the lexer's API with a notion of
				 * which free() routine to use, just pay the price of an extra
				 * strdup().
				 */
				result = FUNC11(escaped_value);
				FUNC4(escaped_value);
				break;
			}
		case PQUOTE_SHELL_ARG:
			{
				/*
				 * For this we use appendShellStringNoError, which is
				 * encoding-agnostic, which is fine since the shell probably
				 * is too.  In any case, the only special character is "'",
				 * which is not known to appear in valid multibyte characters.
				 */
				PQExpBufferData buf;

				FUNC8(&buf);
				if (!FUNC5(&buf, value))
				{
					FUNC9("shell command argument contains a newline or carriage return: \"%s\"",
								 value);
					FUNC7(buf.data);
					return NULL;
				}
				result = buf.data;
				break;
			}

			/* No default: we want a compiler warning for missing cases */
	}

	return result;
}