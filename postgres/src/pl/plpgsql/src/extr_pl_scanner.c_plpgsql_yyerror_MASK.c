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
struct TYPE_2__ {char* scanbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_1__ core_yy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t plpgsql_yyleng ; 
 int plpgsql_yylloc ; 

void
FUNC5(const char *message)
{
	char	   *yytext = core_yy.scanbuf + plpgsql_yylloc;

	if (*yytext == '\0')
	{
		FUNC1(ERROR,
				(FUNC2(ERRCODE_SYNTAX_ERROR),
		/* translator: %s is typically the translation of "syntax error" */
				 FUNC3("%s at end of input", FUNC0(message)),
				 FUNC4(plpgsql_yylloc)));
	}
	else
	{
		/*
		 * If we have done any lookahead then flex will have restored the
		 * character after the end-of-token.  Zap it again so that we report
		 * only the single token here.  This modifies scanbuf but we no longer
		 * care about that.
		 */
		yytext[plpgsql_yyleng] = '\0';

		FUNC1(ERROR,
				(FUNC2(ERRCODE_SYNTAX_ERROR),
		/* translator: first %s is typically the translation of "syntax error" */
				 FUNC3("%s at or near \"%s\"", FUNC0(message), yytext),
				 FUNC4(plpgsql_yylloc)));
	}
}