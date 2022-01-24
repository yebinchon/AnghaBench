#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
typedef  TYPE_2__* pg_locale_t ;
typedef  int /*<<< orphan*/  locale_t ;
struct TYPE_4__ {int /*<<< orphan*/  lt; } ;
struct TYPE_5__ {scalar_t__ provider; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ COLLPROVIDER_LIBC ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  ERRCODE_CHARACTER_NOT_IN_REPERTOIRE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,scalar_t__*,size_t) ; 
 scalar_t__ PG_UTF8 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 size_t FUNC8 (scalar_t__*,char*,size_t) ; 
 size_t FUNC9 (scalar_t__*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,size_t,int) ; 
 char* FUNC12 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

size_t
FUNC14(wchar_t *to, size_t tolen, const char *from, size_t fromlen,
		   pg_locale_t locale)
{
	size_t		result;

	FUNC0(!locale || locale->provider == COLLPROVIDER_LIBC);

	if (tolen == 0)
		return 0;

#ifdef WIN32
	/* See WIN32 "Unicode" comment above */
	if (GetDatabaseEncoding() == PG_UTF8)
	{
		/* Win32 API does not work for zero-length input */
		if (fromlen == 0)
			result = 0;
		else
		{
			result = MultiByteToWideChar(CP_UTF8, 0, from, fromlen, to, tolen - 1);
			/* A zero return is failure */
			if (result == 0)
				result = -1;
		}

		if (result != -1)
		{
			Assert(result < tolen);
			/* Append trailing null wchar (MultiByteToWideChar() does not) */
			to[result] = 0;
		}
	}
	else
#endif							/* WIN32 */
	{
		/* mbstowcs requires ending '\0' */
		char	   *str = FUNC12(from, fromlen);

		if (locale == (pg_locale_t) 0)
		{
			/* Use mbstowcs directly for the default locale */
			result = FUNC8(to, str, tolen);
		}
		else
		{
#ifdef HAVE_LOCALE_T
#ifdef HAVE_MBSTOWCS_L
			/* Use mbstowcs_l for nondefault locales */
			result = mbstowcs_l(to, str, tolen, locale->info.lt);
#else							/* !HAVE_MBSTOWCS_L */
			/* We have to temporarily set the locale as current ... ugh */
			locale_t	save_locale = uselocale(locale->info.lt);

			result = mbstowcs(to, str, tolen);

			uselocale(save_locale);
#endif							/* HAVE_MBSTOWCS_L */
#else							/* !HAVE_LOCALE_T */
			/* Can't have locale != 0 without HAVE_LOCALE_T */
			FUNC3(ERROR, "mbstowcs_l is not available");
			result = 0;			/* keep compiler quiet */
#endif							/* HAVE_LOCALE_T */
		}

		FUNC10(str);
	}

	if (result == -1)
	{
		/*
		 * Invalid multibyte character encountered.  We try to give a useful
		 * error message by letting pg_verifymbstr check the string.  But it's
		 * possible that the string is OK to us, and not OK to mbstowcs ---
		 * this suggests that the LC_CTYPE locale is different from the
		 * database encoding.  Give a generic error message if pg_verifymbstr
		 * can't find anything wrong.
		 */
		FUNC11(from, fromlen, false);	/* might not return */
		/* but if it does ... */
		FUNC4(ERROR,
				(FUNC5(ERRCODE_CHARACTER_NOT_IN_REPERTOIRE),
				 FUNC7("invalid multibyte character for locale"),
				 FUNC6("The server's LC_CTYPE locale is probably incompatible with the database encoding.")));
	}

	return result;
}