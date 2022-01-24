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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_REGULAR_EXPRESSION ; 
 int /*<<< orphan*/  ERROR ; 
 int REG_ADVANCED ; 
#define  REG_EXACT 130 
 int REG_ICASE ; 
#define  REG_NOMATCH 129 
#define  REG_PREFIX 128 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (size_t) ; 
 size_t FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,char*,size_t) ; 

char *
FUNC12(text *text_re, bool case_insensitive, Oid collation,
					bool *exact)
{
	char	   *result;
	regex_t    *re;
	int			cflags;
	int			re_result;
	pg_wchar   *str;
	size_t		slen;
	size_t		maxlen;
	char		errMsg[100];

	*exact = false;				/* default result */

	/* Compile RE */
	cflags = REG_ADVANCED;
	if (case_insensitive)
		cflags |= REG_ICASE;

	re = FUNC2(text_re, cflags, collation);

	/* Examine it to see if there's a fixed prefix */
	re_result = FUNC10(re, &str, &slen);

	switch (re_result)
	{
		case REG_NOMATCH:
			return NULL;

		case REG_PREFIX:
			/* continue with wchar conversion */
			break;

		case REG_EXACT:
			*exact = true;
			/* continue with wchar conversion */
			break;

		default:
			/* re failed??? */
			FUNC1();
			FUNC9(re_result, re, errMsg, sizeof(errMsg));
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_REGULAR_EXPRESSION),
					 FUNC5("regular expression failed: %s", errMsg)));
			break;
	}

	/* Convert pg_wchar result back to database encoding */
	maxlen = FUNC8() * slen + 1;
	result = (char *) FUNC7(maxlen);
	slen = FUNC11(str, result, slen);
	FUNC0(slen < maxlen);

	FUNC6(str);

	return result;
}