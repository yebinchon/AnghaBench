#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  TYPE_1__* pg_locale_t ;
struct TYPE_4__ {scalar_t__ provider; int /*<<< orphan*/  deterministic; } ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ COLLPROVIDER_ICU ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INDETERMINATE_COLLATION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*,int,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ PG_UTF8 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int,char*,int,TYPE_1__*,int) ; 
 int FUNC7 (char*,int,char*,int,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  lower ; 
 int FUNC15 () ; 
 TYPE_1__* FUNC16 (scalar_t__) ; 

__attribute__((used)) static inline int
FUNC17(text *str, text *pat, Oid collation)
{
	char	   *s,
			   *p;
	int			slen,
				plen;
	pg_locale_t locale = 0;
	bool		locale_is_c = false;

	if (FUNC14(collation))
		locale_is_c = true;
	else if (collation != DEFAULT_COLLATION_OID)
	{
		if (!FUNC4(collation))
		{
			/*
			 * This typically means that the parser could not resolve a
			 * conflict of implicit collations, so report it that way.
			 */
			FUNC10(ERROR,
					(FUNC11(ERRCODE_INDETERMINATE_COLLATION),
					 FUNC13("could not determine which collation to use for ILIKE"),
					 FUNC12("Use the COLLATE clause to set the collation explicitly.")));
		}
		locale = FUNC16(collation);

		if (locale && !locale->deterministic)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC13("nondeterministic collations are not supported for ILIKE")));
	}

	/*
	 * For efficiency reasons, in the single byte case we don't call lower()
	 * on the pattern and text, but instead call SB_lower_char on each
	 * character.  In the multi-byte case we don't have much choice :-(. Also,
	 * ICU does not support single-character case folding, so we go the long
	 * way.
	 */

	if (FUNC15() > 1 || (locale && locale->provider == COLLPROVIDER_ICU))
	{
		pat = FUNC0(FUNC1(lower, collation,
													 FUNC5(pat)));
		p = FUNC8(pat);
		plen = FUNC9(pat);
		str = FUNC0(FUNC1(lower, collation,
													 FUNC5(str)));
		s = FUNC8(str);
		slen = FUNC9(str);
		if (FUNC2() == PG_UTF8)
			return FUNC7(s, slen, p, plen, 0, true);
		else
			return FUNC3(s, slen, p, plen, 0, true);
	}
	else
	{
		p = FUNC8(pat);
		plen = FUNC9(pat);
		s = FUNC8(str);
		slen = FUNC9(str);
		return FUNC6(s, slen, p, plen, locale, locale_is_c);
	}
}