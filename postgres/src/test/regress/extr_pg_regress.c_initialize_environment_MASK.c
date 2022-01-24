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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* encoding ; 
 void* FUNC4 (char*) ; 
 char* hostname ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 () ; 
 scalar_t__ nolocale ; 
 int port ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* sockdir ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 scalar_t__ temp_instance ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* user ; 

__attribute__((used)) static void
FUNC12(void)
{
	/*
	 * Set default application_name.  (The test_function may choose to
	 * override this, but if it doesn't, we have something useful in place.)
	 */
	FUNC9("PGAPPNAME=pg_regress");

	if (nolocale)
	{
		/*
		 * Clear out any non-C locale settings
		 */
		FUNC11("LC_COLLATE");
		FUNC11("LC_CTYPE");
		FUNC11("LC_MONETARY");
		FUNC11("LC_NUMERIC");
		FUNC11("LC_TIME");
		FUNC11("LANG");

		/*
		 * Most platforms have adopted the POSIX locale as their
		 * implementation-defined default locale.  Exceptions include native
		 * Windows, macOS with --enable-nls, and Cygwin with --enable-nls.
		 * (Use of --enable-nls matters because libintl replaces setlocale().)
		 * Also, PostgreSQL does not support macOS with locale environment
		 * variables unset; see PostmasterMain().
		 */
#if defined(WIN32) || defined(__CYGWIN__) || defined(__darwin__)
		putenv("LANG=C");
#endif
	}

	/*
	 * Set translation-related settings to English; otherwise psql will
	 * produce translated messages and produce diffs.  (XXX If we ever support
	 * translation of pg_regress, this needs to be moved elsewhere, where psql
	 * is actually called.)
	 */
	FUNC11("LANGUAGE");
	FUNC11("LC_ALL");
	FUNC9("LC_MESSAGES=C");

	/*
	 * Set encoding as requested
	 */
	if (encoding)
		FUNC3("PGCLIENTENCODING", encoding);
	else
		FUNC11("PGCLIENTENCODING");

	/*
	 * Set timezone and datestyle for datetime-related tests
	 */
	FUNC9("PGTZ=PST8PDT");
	FUNC9("PGDATESTYLE=Postgres, MDY");

	/*
	 * Likewise set intervalstyle to ensure consistent results.  This is a bit
	 * more painful because we must use PGOPTIONS, and we want to preserve the
	 * user's ability to set other variables through that.
	 */
	{
		const char *my_pgoptions = "-c intervalstyle=postgres_verbose";
		const char *old_pgoptions = FUNC4("PGOPTIONS");
		char	   *new_pgoptions;

		if (!old_pgoptions)
			old_pgoptions = "";
		new_pgoptions = FUNC8("PGOPTIONS=%s %s",
								 old_pgoptions, my_pgoptions);
		FUNC9(new_pgoptions);
	}

	if (temp_instance)
	{
		/*
		 * Clear out any environment vars that might cause psql to connect to
		 * the wrong postmaster, or otherwise behave in nondefault ways. (Note
		 * we also use psql's -X switch consistently, so that ~/.psqlrc files
		 * won't mess things up.)  Also, set PGPORT to the temp port, and set
		 * PGHOST depending on whether we are using TCP or Unix sockets.
		 */
		FUNC11("PGDATABASE");
		FUNC11("PGUSER");
		FUNC11("PGSERVICE");
		FUNC11("PGSSLMODE");
		FUNC11("PGREQUIRESSL");
		FUNC11("PGCONNECT_TIMEOUT");
		FUNC11("PGDATA");
#ifdef HAVE_UNIX_SOCKETS
		if (hostname != NULL)
			doputenv("PGHOST", hostname);
		else
		{
			sockdir = getenv("PG_REGRESS_SOCK_DIR");
			if (!sockdir)
				sockdir = make_temp_sockdir();
			doputenv("PGHOST", sockdir);
		}
#else
		FUNC0(hostname != NULL);
		FUNC3("PGHOST", hostname);
#endif
		FUNC11("PGHOSTADDR");
		if (port != -1)
		{
			char		s[16];

			FUNC10(s, "%d", port);
			FUNC3("PGPORT", s);
		}
	}
	else
	{
		const char *pghost;
		const char *pgport;

		/*
		 * When testing an existing install, we honor existing environment
		 * variables, except if they're overridden by command line options.
		 */
		if (hostname != NULL)
		{
			FUNC3("PGHOST", hostname);
			FUNC11("PGHOSTADDR");
		}
		if (port != -1)
		{
			char		s[16];

			FUNC10(s, "%d", port);
			FUNC3("PGPORT", s);
		}
		if (user != NULL)
			FUNC3("PGUSER", user);

		/*
		 * However, we *don't* honor PGDATABASE, since we certainly don't wish
		 * to connect to whatever database the user might like as default.
		 * (Most tests override PGDATABASE anyway, but there are some ECPG
		 * test cases that don't.)
		 */
		FUNC11("PGDATABASE");

		/*
		 * Report what we're connecting to
		 */
		pghost = FUNC4("PGHOST");
		pgport = FUNC4("PGPORT");
#ifndef HAVE_UNIX_SOCKETS
		if (!pghost)
			pghost = "localhost";
#endif

		if (pghost && pgport)
			FUNC7(FUNC1("(using postmaster on %s, port %s)\n"), pghost, pgport);
		if (pghost && !pgport)
			FUNC7(FUNC1("(using postmaster on %s, default port)\n"), pghost);
		if (!pghost && pgport)
			FUNC7(FUNC1("(using postmaster on Unix socket, port %s)\n"), pgport);
		if (!pghost && !pgport)
			FUNC7(FUNC1("(using postmaster on Unix socket, default port)\n"));
	}

	FUNC2();
	FUNC5();
}