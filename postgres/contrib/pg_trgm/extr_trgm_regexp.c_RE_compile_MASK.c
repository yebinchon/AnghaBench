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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  pg_wchar ;
typedef  int /*<<< orphan*/  errMsg ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_REGULAR_EXPRESSION ; 
 int /*<<< orphan*/  ERROR ; 
 int REG_OKAY ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC10(regex_t *regex, text *text_re, int cflags, Oid collation)
{
	int			text_re_len = FUNC1(text_re);
	char	   *text_re_val = FUNC0(text_re);
	pg_wchar   *pattern;
	int			pattern_len;
	int			regcomp_result;
	char		errMsg[100];

	/* Convert pattern string to wide characters */
	pattern = (pg_wchar *) FUNC5((text_re_len + 1) * sizeof(pg_wchar));
	pattern_len = FUNC7(text_re_val,
									   pattern,
									   text_re_len);

	/* Compile regex */
	regcomp_result = FUNC8(regex,
								pattern,
								pattern_len,
								cflags,
								collation);

	FUNC6(pattern);

	if (regcomp_result != REG_OKAY)
	{
		/* re didn't compile (no need for pg_regfree, if so) */
		FUNC9(regcomp_result, regex, errMsg, sizeof(errMsg));
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_REGULAR_EXPRESSION),
				 FUNC4("invalid regular expression: %s", errMsg)));
	}
}