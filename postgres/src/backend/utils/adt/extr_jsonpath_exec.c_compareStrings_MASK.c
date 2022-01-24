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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ PG_SQL_ASCII ; 
 scalar_t__ PG_UTF8 ; 
 int FUNC1 (char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int,scalar_t__) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(const char *mbstr1, int mblen1,
			   const char *mbstr2, int mblen2)
{
	if (FUNC0() == PG_SQL_ASCII ||
		FUNC0() == PG_UTF8)
	{
		/*
		 * It's known property of UTF-8 strings that their per-byte comparison
		 * result matches codepoints comparison result.  ASCII can be
		 * considered as special case of UTF-8.
		 */
		return FUNC1(mbstr1, mblen1, mbstr2, mblen2);
	}
	else
	{
		char	   *utf8str1,
				   *utf8str2;
		int			cmp,
					utf8len1,
					utf8len2;

		/*
		 * We have to convert other encodings to UTF-8 first, then compare.
		 * Input strings may be not null-terminated and pg_server_to_any() may
		 * return them "as is".  So, use strlen() only if there is real
		 * conversion.
		 */
		utf8str1 = FUNC3(mbstr1, mblen1, PG_UTF8);
		utf8str2 = FUNC3(mbstr2, mblen2, PG_UTF8);
		utf8len1 = (mbstr1 == utf8str1) ? mblen1 : FUNC4(utf8str1);
		utf8len2 = (mbstr2 == utf8str2) ? mblen2 : FUNC4(utf8str2);

		cmp = FUNC1(utf8str1, utf8len1, utf8str2, utf8len2);

		/*
		 * If pg_server_to_any() did no real conversion, then we actually
		 * compared original strings.  So, we already done.
		 */
		if (mbstr1 == utf8str1 && mbstr2 == utf8str2)
			return cmp;

		/* Free memory if needed */
		if (mbstr1 != utf8str1)
			FUNC2(utf8str1);
		if (mbstr2 != utf8str2)
			FUNC2(utf8str2);

		/*
		 * When all Unicode codepoints are equal, return result of binary
		 * comparison.  In some edge cases, same characters may have different
		 * representations in encoding.  Then our behavior could diverge from
		 * standard.  However, that allow us to do simple binary comparison
		 * for "==" operator, which is performance critical in typical cases.
		 * In future to implement strict standard conformance, we can do
		 * normalization of input JSON strings.
		 */
		if (cmp == 0)
			return FUNC1(mbstr1, mblen1, mbstr2, mblen2);
		else
			return cmp;
	}
}