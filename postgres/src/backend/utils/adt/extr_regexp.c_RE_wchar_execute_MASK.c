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
typedef  int /*<<< orphan*/  regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  pg_wchar ;
typedef  int /*<<< orphan*/  errMsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_REGULAR_EXPRESSION ; 
 int /*<<< orphan*/  ERROR ; 
 int REG_NOMATCH ; 
 int REG_OKAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(regex_t *re, pg_wchar *data, int data_len,
				 int start_search, int nmatch, regmatch_t *pmatch)
{
	int			regexec_result;
	char		errMsg[100];

	/* Perform RE match and return result */
	regexec_result = FUNC5(re,
								data,
								data_len,
								start_search,
								NULL,	/* no details */
								nmatch,
								pmatch,
								0);

	if (regexec_result != REG_OKAY && regexec_result != REG_NOMATCH)
	{
		/* re failed??? */
		FUNC0();
		FUNC4(regexec_result, re, errMsg, sizeof(errMsg));
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_REGULAR_EXPRESSION),
				 FUNC3("regular expression failed: %s", errMsg)));
	}

	return (regexec_result == REG_OKAY);
}