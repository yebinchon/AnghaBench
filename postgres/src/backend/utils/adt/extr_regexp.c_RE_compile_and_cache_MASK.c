#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  pg_wchar ;
typedef  int /*<<< orphan*/  errMsg ;
struct TYPE_5__ {int cre_pat_len; int cre_flags; scalar_t__ cre_collation; int /*<<< orphan*/  cre_re; int /*<<< orphan*/ * cre_pat; } ;
typedef  TYPE_1__ cached_re_str ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERRCODE_INVALID_REGULAR_EXPRESSION ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int MAX_CACHED_RES ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int REG_OKAY ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*,int) ; 
 int num_res ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_1__* re_array ; 

regex_t *
FUNC19(text *text_re, int cflags, Oid collation)
{
	int			text_re_len = FUNC4(text_re);
	char	   *text_re_val = FUNC3(text_re);
	pg_wchar   *pattern;
	int			pattern_len;
	int			i;
	int			regcomp_result;
	cached_re_str re_temp;
	char		errMsg[100];

	/*
	 * Look for a match among previously compiled REs.  Since the data
	 * structure is self-organizing with most-used entries at the front, our
	 * search strategy can just be to scan from the front.
	 */
	for (i = 0; i < num_res; i++)
	{
		if (re_array[i].cre_pat_len == text_re_len &&
			re_array[i].cre_flags == cflags &&
			re_array[i].cre_collation == collation &&
			FUNC10(re_array[i].cre_pat, text_re_val, text_re_len) == 0)
		{
			/*
			 * Found a match; move it to front if not there already.
			 */
			if (i > 0)
			{
				re_temp = re_array[i];
				FUNC12(&re_array[1], &re_array[0], i * sizeof(cached_re_str));
				re_array[0] = re_temp;
			}

			return &re_array[0].cre_re;
		}
	}

	/*
	 * Couldn't find it, so try to compile the new RE.  To avoid leaking
	 * resources on failure, we build into the re_temp local.
	 */

	/* Convert pattern string to wide characters */
	pattern = (pg_wchar *) FUNC13((text_re_len + 1) * sizeof(pg_wchar));
	pattern_len = FUNC15(text_re_val,
									   pattern,
									   text_re_len);

	regcomp_result = FUNC16(&re_temp.cre_re,
								pattern,
								pattern_len,
								cflags,
								collation);

	FUNC14(pattern);

	if (regcomp_result != REG_OKAY)
	{
		/* re didn't compile (no need for pg_regfree, if so) */

		/*
		 * Here and in other places in this file, do CHECK_FOR_INTERRUPTS
		 * before reporting a regex error.  This is so that if the regex
		 * library aborts and returns REG_CANCEL, we don't print an error
		 * message that implies the regex was invalid.
		 */
		FUNC1();

		FUNC17(regcomp_result, &re_temp.cre_re, errMsg, sizeof(errMsg));
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INVALID_REGULAR_EXPRESSION),
				 FUNC7("invalid regular expression: %s", errMsg)));
	}

	/*
	 * We use malloc/free for the cre_pat field because the storage has to
	 * persist across transactions, and because we want to get control back on
	 * out-of-memory.  The Max() is because some malloc implementations return
	 * NULL for malloc(0).
	 */
	re_temp.cre_pat = FUNC9(FUNC2(text_re_len, 1));
	if (re_temp.cre_pat == NULL)
	{
		FUNC18(&re_temp.cre_re);
		FUNC5(ERROR,
				(FUNC6(ERRCODE_OUT_OF_MEMORY),
				 FUNC7("out of memory")));
	}
	FUNC11(re_temp.cre_pat, text_re_val, text_re_len);
	re_temp.cre_pat_len = text_re_len;
	re_temp.cre_flags = cflags;
	re_temp.cre_collation = collation;

	/*
	 * Okay, we have a valid new item in re_temp; insert it into the storage
	 * array.  Discard last entry if needed.
	 */
	if (num_res >= MAX_CACHED_RES)
	{
		--num_res;
		FUNC0(num_res < MAX_CACHED_RES);
		FUNC18(&re_array[num_res].cre_re);
		FUNC8(re_array[num_res].cre_pat);
	}

	if (num_res > 0)
		FUNC12(&re_array[1], &re_array[0], num_res * sizeof(cached_re_str));

	re_array[0] = re_temp;
	num_res++;

	return &re_array[0].cre_re;
}