#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8(StringInfo str, text *replace_text,
							 regmatch_t *pmatch,
							 char *start_ptr, int data_pos)
{
	const char *p = FUNC1(replace_text);
	const char *p_end = p + FUNC2(replace_text);
	int			eml = FUNC6();

	for (;;)
	{
		const char *chunk_start = p;
		int			so;
		int			eo;

		/* Find next escape char. */
		if (eml == 1)
		{
			for (; p < p_end && *p != '\\'; p++)
				 /* nothing */ ;
		}
		else
		{
			for (; p < p_end && *p != '\\'; p += FUNC7(p))
				 /* nothing */ ;
		}

		/* Copy the text we just scanned over, if any. */
		if (p > chunk_start)
			FUNC3(str, chunk_start, p - chunk_start);

		/* Done if at end of string, else advance over escape char. */
		if (p >= p_end)
			break;
		p++;

		if (p >= p_end)
		{
			/* Escape at very end of input.  Treat same as unexpected char */
			FUNC4(str, '\\');
			break;
		}

		if (*p >= '1' && *p <= '9')
		{
			/* Use the back reference of regexp. */
			int			idx = *p - '0';

			so = pmatch[idx].rm_so;
			eo = pmatch[idx].rm_eo;
			p++;
		}
		else if (*p == '&')
		{
			/* Use the entire matched string. */
			so = pmatch[0].rm_so;
			eo = pmatch[0].rm_eo;
			p++;
		}
		else if (*p == '\\')
		{
			/* \\ means transfer one \ to output. */
			FUNC4(str, '\\');
			p++;
			continue;
		}
		else
		{
			/*
			 * If escape char is not followed by any expected char, just treat
			 * it as ordinary data to copy.  (XXX would it be better to throw
			 * an error?)
			 */
			FUNC4(str, '\\');
			continue;
		}

		if (so != -1 && eo != -1)
		{
			/*
			 * Copy the text that is back reference of regexp.  Note so and eo
			 * are counted in characters not bytes.
			 */
			char	   *chunk_start;
			int			chunk_len;

			FUNC0(so >= data_pos);
			chunk_start = start_ptr;
			chunk_start += FUNC5(chunk_start, so - data_pos);
			chunk_len = FUNC5(chunk_start, eo - so);
			FUNC3(str, chunk_start, chunk_len);
		}
	}
}