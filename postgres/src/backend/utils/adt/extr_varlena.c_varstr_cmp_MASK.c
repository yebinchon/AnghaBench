#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* pg_locale_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  char UChar ;
struct TYPE_5__ {int /*<<< orphan*/  ucol; } ;
struct TYPE_6__ {int /*<<< orphan*/  lt; TYPE_1__ icu; } ;
struct TYPE_7__ {scalar_t__ provider; scalar_t__ deterministic; TYPE_2__ info; } ;
typedef  scalar_t__ Oid ;
typedef  scalar_t__* LPWSTR ;

/* Variables and functions */
 scalar_t__ COLLPROVIDER_ICU ; 
 scalar_t__ COLLPROVIDER_LIBC ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,scalar_t__*,int) ; 
 scalar_t__ PG_UTF8 ; 
 int TEXTBUFLEN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (char**,char const*,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int FUNC11 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 char* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 TYPE_3__* FUNC15 (scalar_t__) ; 
 int FUNC16 (char*,char*) ; 
 int FUNC17 (char*,char*) ; 
 int FUNC18 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,char const*,int,char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC22 (scalar_t__*,scalar_t__*) ; 
 int FUNC23 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 

int
FUNC24(const char *arg1, int len1, const char *arg2, int len2, Oid collid)
{
	int			result;

	FUNC5(collid);

	/*
	 * Unfortunately, there is no strncoll(), so in the non-C locale case we
	 * have to do some memory copying.  This turns out to be significantly
	 * slower, so we optimize the case where LC_COLLATE is C.  We also try to
	 * optimize relatively-short strings by avoiding palloc/pfree overhead.
	 */
	if (FUNC10(collid))
	{
		result = FUNC11(arg1, arg2, FUNC2(len1, len2));
		if ((result == 0) && (len1 != len2))
			result = (len1 < len2) ? -1 : 1;
	}
	else
	{
		char		a1buf[TEXTBUFLEN];
		char		a2buf[TEXTBUFLEN];
		char	   *a1p,
				   *a2p;
		pg_locale_t mylocale = 0;

		if (collid != DEFAULT_COLLATION_OID)
			mylocale = FUNC15(collid);

		/*
		 * memcmp() can't tell us which of two unequal strings sorts first,
		 * but it's a cheap way to tell if they're equal.  Testing shows that
		 * memcmp() followed by strcoll() is only trivially slower than
		 * strcoll() by itself, so we don't lose much if this doesn't work out
		 * very often, and if it does - for example, because there are many
		 * equal strings in the input - then we win big by avoiding expensive
		 * collation-aware comparisons.
		 */
		if (len1 == len2 && FUNC11(arg1, arg2, len1) == 0)
			return 0;

#ifdef WIN32
		/* Win32 does not have UTF-8, so we need to map to UTF-16 */
		if (GetDatabaseEncoding() == PG_UTF8
			&& (!mylocale || mylocale->provider == COLLPROVIDER_LIBC))
		{
			int			a1len;
			int			a2len;
			int			r;

			if (len1 >= TEXTBUFLEN / 2)
			{
				a1len = len1 * 2 + 2;
				a1p = palloc(a1len);
			}
			else
			{
				a1len = TEXTBUFLEN;
				a1p = a1buf;
			}
			if (len2 >= TEXTBUFLEN / 2)
			{
				a2len = len2 * 2 + 2;
				a2p = palloc(a2len);
			}
			else
			{
				a2len = TEXTBUFLEN;
				a2p = a2buf;
			}

			/* stupid Microsloth API does not work for zero-length input */
			if (len1 == 0)
				r = 0;
			else
			{
				r = MultiByteToWideChar(CP_UTF8, 0, arg1, len1,
										(LPWSTR) a1p, a1len / 2);
				if (!r)
					ereport(ERROR,
							(errmsg("could not convert string to UTF-16: error code %lu",
									GetLastError())));
			}
			((LPWSTR) a1p)[r] = 0;

			if (len2 == 0)
				r = 0;
			else
			{
				r = MultiByteToWideChar(CP_UTF8, 0, arg2, len2,
										(LPWSTR) a2p, a2len / 2);
				if (!r)
					ereport(ERROR,
							(errmsg("could not convert string to UTF-16: error code %lu",
									GetLastError())));
			}
			((LPWSTR) a2p)[r] = 0;

			errno = 0;
#ifdef HAVE_LOCALE_T
			if (mylocale)
				result = wcscoll_l((LPWSTR) a1p, (LPWSTR) a2p, mylocale->info.lt);
			else
#endif
				result = wcscoll((LPWSTR) a1p, (LPWSTR) a2p);
			if (result == 2147483647)	/* _NLSCMPERROR; missing from mingw
										 * headers */
				ereport(ERROR,
						(errmsg("could not compare Unicode strings: %m")));

			/* Break tie if necessary. */
			if (result == 0 &&
				(!mylocale || mylocale->deterministic))
			{
				result = memcmp(arg1, arg2, Min(len1, len2));
				if ((result == 0) && (len1 != len2))
					result = (len1 < len2) ? -1 : 1;
			}

			if (a1p != a1buf)
				pfree(a1p);
			if (a2p != a2buf)
				pfree(a2p);

			return result;
		}
#endif							/* WIN32 */

		if (len1 >= TEXTBUFLEN)
			a1p = (char *) FUNC13(len1 + 1);
		else
			a1p = a1buf;
		if (len2 >= TEXTBUFLEN)
			a2p = (char *) FUNC13(len2 + 1);
		else
			a2p = a2buf;

		FUNC12(a1p, arg1, len1);
		a1p[len1] = '\0';
		FUNC12(a2p, arg2, len2);
		a2p[len2] = '\0';

		if (mylocale)
		{
			if (mylocale->provider == COLLPROVIDER_ICU)
			{
#ifdef USE_ICU
#ifdef HAVE_UCOL_STRCOLLUTF8
				if (GetDatabaseEncoding() == PG_UTF8)
				{
					UErrorCode	status;

					status = U_ZERO_ERROR;
					result = ucol_strcollUTF8(mylocale->info.icu.ucol,
											  arg1, len1,
											  arg2, len2,
											  &status);
					if (U_FAILURE(status))
						ereport(ERROR,
								(errmsg("collation failed: %s", u_errorName(status))));
				}
				else
#endif
				{
					int32_t		ulen1,
								ulen2;
					UChar	   *uchar1,
							   *uchar2;

					ulen1 = icu_to_uchar(&uchar1, arg1, len1);
					ulen2 = icu_to_uchar(&uchar2, arg2, len2);

					result = ucol_strcoll(mylocale->info.icu.ucol,
										  uchar1, ulen1,
										  uchar2, ulen2);

					pfree(uchar1);
					pfree(uchar2);
				}
#else							/* not USE_ICU */
				/* shouldn't happen */
				FUNC6(ERROR, "unsupported collprovider: %c", mylocale->provider);
#endif							/* not USE_ICU */
			}
			else
			{
#ifdef HAVE_LOCALE_T
				result = strcoll_l(a1p, a2p, mylocale->info.lt);
#else
				/* shouldn't happen */
				FUNC6(ERROR, "unsupported collprovider: %c", mylocale->provider);
#endif
			}
		}
		else
			result = FUNC17(a1p, a2p);

		/* Break tie if necessary. */
		if (result == 0 &&
			(!mylocale || mylocale->deterministic))
			result = FUNC16(a1p, a2p);

		if (a1p != a1buf)
			FUNC14(a1p);
		if (a2p != a2buf)
			FUNC14(a2p);
	}

	return result;
}