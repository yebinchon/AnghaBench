#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pg_locale_t ;
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_6__ {scalar_t__ consttype; int /*<<< orphan*/  constvalue; } ;
typedef  int /*<<< orphan*/  Selectivity ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Pattern_Prefix_Status ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ Const ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BYTEAOID ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INDETERMINATE_COLLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  Pattern_Prefix_Exact ; 
 int /*<<< orphan*/  Pattern_Prefix_None ; 
 int /*<<< orphan*/  Pattern_Prefix_Partial ; 
 scalar_t__ TEXTOID ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC14 (int) ; 
 scalar_t__ FUNC15 (char,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 TYPE_1__* FUNC19 (char*,int) ; 
 TYPE_1__* FUNC20 (char*,scalar_t__) ; 
 int FUNC21 (char*) ; 

__attribute__((used)) static Pattern_Prefix_Status
FUNC22(Const *patt_const, bool case_insensitive, Oid collation,
				  Const **prefix_const, Selectivity *rest_selec)
{
	char	   *match;
	char	   *patt;
	int			pattlen;
	Oid			typeid = patt_const->consttype;
	int			pos,
				match_pos;
	bool		is_multibyte = (FUNC17() > 1);
	pg_locale_t locale = 0;
	bool		locale_is_c = false;

	/* the right-hand const is type text or bytea */
	FUNC0(typeid == BYTEAOID || typeid == TEXTOID);

	if (case_insensitive)
	{
		if (typeid == BYTEAOID)
			FUNC7(ERROR,
					(FUNC8(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC10("case insensitive matching not supported on type bytea")));

		/* If case-insensitive, we need locale info */
		if (FUNC11(collation))
			locale_is_c = true;
		else if (collation != DEFAULT_COLLATION_OID)
		{
			if (!FUNC3(collation))
			{
				/*
				 * This typically means that the parser could not resolve a
				 * conflict of implicit collations, so report it that way.
				 */
				FUNC7(ERROR,
						(FUNC8(ERRCODE_INDETERMINATE_COLLATION),
						 FUNC10("could not determine which collation to use for ILIKE"),
						 FUNC9("Use the COLLATE clause to set the collation explicitly.")));
			}
			locale = FUNC18(collation);
		}
	}

	if (typeid != BYTEAOID)
	{
		patt = FUNC4(patt_const->constvalue);
		pattlen = FUNC21(patt);
	}
	else
	{
		bytea	   *bstr = FUNC1(patt_const->constvalue);

		pattlen = FUNC6(bstr);
		patt = (char *) FUNC14(pattlen);
		FUNC13(patt, FUNC5(bstr), pattlen);
		FUNC0((Pointer) bstr == FUNC2(patt_const->constvalue));
	}

	match = FUNC14(pattlen + 1);
	match_pos = 0;
	for (pos = 0; pos < pattlen; pos++)
	{
		/* % and _ are wildcard characters in LIKE */
		if (patt[pos] == '%' ||
			patt[pos] == '_')
			break;

		/* Backslash escapes the next character */
		if (patt[pos] == '\\')
		{
			pos++;
			if (pos >= pattlen)
				break;
		}

		/* Stop if case-varying character (it's sort of a wildcard) */
		if (case_insensitive &&
			FUNC15(patt[pos], is_multibyte, locale, locale_is_c))
			break;

		match[match_pos++] = patt[pos];
	}

	match[match_pos] = '\0';

	if (typeid != BYTEAOID)
		*prefix_const = FUNC20(match, typeid);
	else
		*prefix_const = FUNC19(match, match_pos);

	if (rest_selec != NULL)
		*rest_selec = FUNC12(&patt[pos], pattlen - pos,
									   case_insensitive);

	FUNC16(patt);
	FUNC16(match);

	/* in LIKE, an empty pattern is an exact match! */
	if (pos == pattlen)
		return Pattern_Prefix_Exact;	/* reached end of pattern, so exact */

	if (match_pos > 0)
		return Pattern_Prefix_Partial;

	return Pattern_Prefix_None;
}