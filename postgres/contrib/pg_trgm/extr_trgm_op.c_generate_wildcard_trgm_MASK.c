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
typedef  int /*<<< orphan*/  trgm ;
struct TYPE_5__ {int /*<<< orphan*/  flag; } ;
typedef  TYPE_1__ TRGM ;

/* Variables and functions */
 int /*<<< orphan*/  ARRKEY ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int LPADDING ; 
 int RPADDING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int TRGMHDRSIZE ; 
 int /*<<< orphan*/  comp_trgm ; 
 char* FUNC3 (char const*,int,char*,int*,int*) ; 
 char* FUNC4 (char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int,int) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 

TRGM *
FUNC12(const char *str, int slen)
{
	TRGM	   *trg;
	char	   *buf,
			   *buf2;
	trgm	   *tptr;
	int			len,
				charlen,
				bytelen;
	const char *eword;

	FUNC8(slen);

	trg = (TRGM *) FUNC6(TRGMHDRSIZE + sizeof(trgm) * (slen / 2 + 1) * 3);
	trg->flag = ARRKEY;
	FUNC2(trg, TRGMHDRSIZE);

	if (slen + LPADDING + RPADDING < 3 || slen == 0)
		return trg;

	tptr = FUNC1(trg);

	/* Allocate a buffer for blank-padded, but not yet case-folded, words */
	buf = FUNC6(sizeof(char) * (slen + 4));

	/*
	 * Extract trigrams from each substring extracted by get_wildcard_part.
	 */
	eword = str;
	while ((eword = FUNC3(eword, slen - (eword - str),
									  buf, &bytelen, &charlen)) != NULL)
	{
#ifdef IGNORECASE
		buf2 = lowerstr_with_len(buf, bytelen);
		bytelen = strlen(buf2);
#else
		buf2 = buf;
#endif

		/*
		 * count trigrams
		 */
		tptr = FUNC5(tptr, buf2, bytelen, charlen);

#ifdef IGNORECASE
		pfree(buf2);
#endif
	}

	FUNC7(buf);

	if ((len = tptr - FUNC1(trg)) == 0)
		return trg;

	/*
	 * Make trigrams unique.
	 */
	if (len > 1)
	{
		FUNC9((void *) FUNC1(trg), len, sizeof(trgm), comp_trgm);
		len = FUNC10(FUNC1(trg), len, sizeof(trgm), comp_trgm);
	}

	FUNC2(trg, FUNC0(ARRKEY, len));

	return trg;
}