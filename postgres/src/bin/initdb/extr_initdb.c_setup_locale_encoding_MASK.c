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
 int PG_UTF8 ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  encoding ; 
 int encodingid ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* lc_collate ; 
 char* lc_ctype ; 
 char* lc_messages ; 
 char* lc_monetary ; 
 char* lc_numeric ; 
 char* lc_time ; 
 char* FUNC5 (int) ; 
 int FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char*,char*) ; 

void
FUNC12(void)
{
	FUNC10();

	if (FUNC11(lc_ctype, lc_collate) == 0 &&
		FUNC11(lc_ctype, lc_time) == 0 &&
		FUNC11(lc_ctype, lc_numeric) == 0 &&
		FUNC11(lc_ctype, lc_monetary) == 0 &&
		FUNC11(lc_ctype, lc_messages) == 0)
		FUNC9(FUNC0("The database cluster will be initialized with locale \"%s\".\n"), lc_ctype);
	else
	{
		FUNC9(FUNC0("The database cluster will be initialized with locales\n"
				 "  COLLATE:  %s\n"
				 "  CTYPE:    %s\n"
				 "  MESSAGES: %s\n"
				 "  MONETARY: %s\n"
				 "  NUMERIC:  %s\n"
				 "  TIME:     %s\n"),
			   lc_collate,
			   lc_ctype,
			   lc_messages,
			   lc_monetary,
			   lc_numeric,
			   lc_time);
	}

	if (!encoding)
	{
		int			ctype_enc;

		ctype_enc = FUNC6(lc_ctype, true);

		if (ctype_enc == -1)
		{
			/* Couldn't recognize the locale's codeset */
			FUNC7("could not find suitable encoding for locale \"%s\"",
						 lc_ctype);
			FUNC3(stderr, FUNC0("Rerun %s with the -E option.\n"), progname);
			FUNC3(stderr, FUNC0("Try \"%s --help\" for more information.\n"),
					progname);
			FUNC2(1);
		}
		else if (!FUNC8(ctype_enc))
		{
			/*
			 * We recognized it, but it's not a legal server encoding. On
			 * Windows, UTF-8 works with any locale, so we can fall back to
			 * UTF-8.
			 */
#ifdef WIN32
			encodingid = PG_UTF8;
			printf(_("Encoding \"%s\" implied by locale is not allowed as a server-side encoding.\n"
					 "The default database encoding will be set to \"%s\" instead.\n"),
				   pg_encoding_to_char(ctype_enc),
				   pg_encoding_to_char(encodingid));
#else
			FUNC7("locale \"%s\" requires unsupported encoding \"%s\"",
						 lc_ctype, FUNC5(ctype_enc));
			FUNC3(stderr,
					FUNC0("Encoding \"%s\" is not allowed as a server-side encoding.\n"
					  "Rerun %s with a different locale selection.\n"),
					FUNC5(ctype_enc), progname);
			FUNC2(1);
#endif
		}
		else
		{
			encodingid = ctype_enc;
			FUNC9(FUNC0("The default database encoding has accordingly been set to \"%s\".\n"),
				   FUNC5(encodingid));
		}
	}
	else
		encodingid = FUNC4(encoding);

	if (!FUNC1(lc_ctype, encodingid) ||
		!FUNC1(lc_collate, encodingid))
		FUNC2(1);				/* check_locale_encoding printed the error */

}