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
typedef  int /*<<< orphan*/  wint_t ;
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  pg_locale_t ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  ERRCODE_CHARACTER_NOT_IN_REPERTOIRE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (scalar_t__*,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int FUNC9 () ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,scalar_t__*,int,int /*<<< orphan*/ ) ; 

char *
FUNC14(const char *str, int len)
{
	char	   *out;
	Oid			collation = DEFAULT_COLLATION_OID;	/* TODO */
	pg_locale_t mylocale = 0;	/* TODO */

	if (len == 0)
		return FUNC10("");

	/*
	 * Use wide char code only when max encoding length > 1 and ctype != C.
	 * Some operating systems fail with multi-byte encodings and a C locale.
	 * Also, for a C locale there is no need to process as multibyte. From
	 * backend/utils/adt/oracle_compat.c Teodor
	 */
	if (FUNC9() > 1 && !FUNC6(collation))
	{
		wchar_t    *wstr,
				   *wptr;
		int			wlen;

		/*
		 * alloc number of wchar_t for worst case, len contains number of
		 * bytes >= number of characters and alloc 1 wchar_t for 0, because
		 * wchar2char wants zero-terminated string
		 */
		wptr = wstr = (wchar_t *) FUNC7(sizeof(wchar_t) * (len + 1));

		wlen = FUNC2(wstr, len + 1, str, len, mylocale);
		FUNC0(wlen <= len);

		while (*wptr)
		{
			*wptr = FUNC12((wint_t) *wptr);
			wptr++;
		}

		/*
		 * Alloc result string for worst case + '\0'
		 */
		len = FUNC9() * wlen + 1;
		out = (char *) FUNC7(len);

		wlen = FUNC13(out, wstr, len, mylocale);

		FUNC8(wstr);

		if (wlen < 0)
			FUNC3(ERROR,
					(FUNC4(ERRCODE_CHARACTER_NOT_IN_REPERTOIRE),
					 FUNC5("conversion from wchar_t to server encoding failed: %m")));
		FUNC0(wlen < len);
	}
	else
	{
		const char *ptr = str;
		char	   *outptr;

		outptr = out = (char *) FUNC7(sizeof(char) * (len + 1));
		while ((ptr - str) < len && *ptr)
		{
			*outptr++ = FUNC11(FUNC1(ptr));
			ptr++;
		}
		*outptr = '\0';
	}

	return out;
}