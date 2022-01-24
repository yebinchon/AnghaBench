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

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_ESCAPE_SEQUENCE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static text *
FUNC14(text *pat, text *esc)
{
	text	   *result;
	char	   *p,
			   *e,
			   *r;
	int			plen,
				elen;
	bool		afterescape;

	p = FUNC5(pat);
	plen = FUNC7(pat);
	e = FUNC5(esc);
	elen = FUNC7(esc);

	/*
	 * Worst-case pattern growth is 2x --- unlikely, but it's hardly worth
	 * trying to calculate the size more accurately than that.
	 */
	result = (text *) FUNC13(plen * 2 + VARHDRSZ);
	r = FUNC4(result);

	if (elen == 0)
	{
		/*
		 * No escape character is wanted.  Double any backslashes in the
		 * pattern to make them act like ordinary characters.
		 */
		while (plen > 0)
		{
			if (*p == '\\')
				*r++ = '\\';
			FUNC1(r, p, plen);
		}
	}
	else
	{
		/*
		 * The specified escape must be only a single character.
		 */
		FUNC2(e, elen);
		if (elen != 0)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INVALID_ESCAPE_SEQUENCE),
					 FUNC11("invalid escape string"),
					 FUNC10("Escape string must be empty or one character.")));

		e = FUNC5(esc);

		/*
		 * If specified escape is '\', just copy the pattern as-is.
		 */
		if (*e == '\\')
		{
			FUNC12(result, pat, FUNC6(pat));
			return result;
		}

		/*
		 * Otherwise, convert occurrences of the specified escape character to
		 * '\', and double occurrences of '\' --- unless they immediately
		 * follow an escape character!
		 */
		afterescape = false;
		while (plen > 0)
		{
			if (FUNC0(p, e) && !afterescape)
			{
				*r++ = '\\';
				FUNC2(p, plen);
				afterescape = true;
			}
			else if (*p == '\\')
			{
				*r++ = '\\';
				if (!afterescape)
					*r++ = '\\';
				FUNC2(p, plen);
				afterescape = false;
			}
			else
			{
				FUNC1(r, p, plen);
				afterescape = false;
			}
		}
	}

	FUNC3(result, r - ((char *) result));

	return result;
}