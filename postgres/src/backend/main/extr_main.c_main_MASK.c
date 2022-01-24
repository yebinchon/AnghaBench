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
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LC_MONETARY ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  LC_TIME ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PG_BACKEND_VERSIONSTR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  progname ; 
 char** FUNC18 (int,char**) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 

int
FUNC25(int argc, char *argv[])
{
	bool		do_check_root = true;

	/*
	 * If supported on the current platform, set up a handler to be called if
	 * the backend/postmaster crashes with a fatal signal or exception.
	 */
#if defined(WIN32) && defined(HAVE_MINIDUMP_TYPE)
	pgwin32_install_crashdump_handler();
#endif

	progname = FUNC12(argv[0]);

	/*
	 * Platform-specific startup hacks
	 */
	FUNC20(progname);

	/*
	 * Remember the physical location of the initially given argv[] array for
	 * possible use by ps display.  On some platforms, the argv[] storage must
	 * be overwritten in order to set the process title for ps. In such cases
	 * save_ps_display_args makes and returns a new copy of the argv[] array.
	 *
	 * save_ps_display_args may also move the environment strings to make
	 * extra room. Therefore this should be done as early as possible during
	 * startup, to avoid entanglements with code that might save a getenv()
	 * result pointer.
	 */
	argv = FUNC18(argc, argv);

	/*
	 * Fire up essential subsystems: error and memory management
	 *
	 * Code after this point is allowed to use elog/ereport, though
	 * localization of messages may not work right away, and messages won't go
	 * anywhere but stderr until GUC settings get loaded.
	 */
	FUNC2();

	/*
	 * Set up locale information
	 */
	FUNC19(argv[0], FUNC3("postgres"));

	/*
	 * In the postmaster, absorb the environment values for LC_COLLATE and
	 * LC_CTYPE.  Individual backends will change these later to settings
	 * taken from pg_database, but the postmaster cannot do that.  If we leave
	 * these set to "C" then message localization might not work well in the
	 * postmaster.
	 */
	FUNC15("LC_COLLATE", LC_COLLATE, "");
	FUNC15("LC_CTYPE", LC_CTYPE, "");

	/*
	 * LC_MESSAGES will get set later during GUC option processing, but we set
	 * it here to allow startup error messages to be localized.
	 */
#ifdef LC_MESSAGES
	init_locale("LC_MESSAGES", LC_MESSAGES, "");
#endif

	/*
	 * We keep these set to "C" always, except transiently in pg_locale.c; see
	 * that file for explanations.
	 */
	FUNC15("LC_MONETARY", LC_MONETARY, "C");
	FUNC15("LC_NUMERIC", LC_NUMERIC, "C");
	FUNC15("LC_TIME", LC_TIME, "C");

	/*
	 * Now that we have absorbed as much as we wish to from the locale
	 * environment, remove any LC_ALL setting, so that the environment
	 * variables installed by pg_perm_setlocale have force.
	 */
	FUNC24("LC_ALL");

	FUNC9();

	/*
	 * Catch standard options before doing much else, in particular before we
	 * insist on not being root.
	 */
	if (argc > 1)
	{
		if (FUNC21(argv[1], "--help") == 0 || FUNC21(argv[1], "-?") == 0)
		{
			FUNC14(progname);
			FUNC10(0);
		}
		if (FUNC21(argv[1], "--version") == 0 || FUNC21(argv[1], "-V") == 0)
		{
			FUNC11(PG_BACKEND_VERSIONSTR, stdout);
			FUNC10(0);
		}

		/*
		 * In addition to the above, we allow "--describe-config" and "-C var"
		 * to be called by root.  This is reasonably safe since these are
		 * read-only activities.  The -C case is important because pg_ctl may
		 * try to invoke it while still holding administrator privileges on
		 * Windows.  Note that while -C can normally be in any argv position,
		 * if you want to bypass the root check you must put it first.  This
		 * reduces the risk that we might misinterpret some other mode's -C
		 * switch as being the postmaster/postgres one.
		 */
		if (FUNC21(argv[1], "--describe-config") == 0)
			do_check_root = false;
		else if (argc > 2 && FUNC21(argv[1], "-C") == 0)
			do_check_root = false;
	}

	/*
	 * Make sure we are not running as root, unless it's safe for the selected
	 * option.
	 */
	if (do_check_root)
		FUNC8(progname);

	/*
	 * Dispatch to one of various subprograms depending on first argument.
	 */

#ifdef EXEC_BACKEND
	if (argc > 1 && strncmp(argv[1], "--fork", 6) == 0)
		SubPostmasterMain(argc, argv);	/* does not return */
#endif

#ifdef WIN32

	/*
	 * Start our win32 signal implementation
	 *
	 * SubPostmasterMain() will do this for itself, but the remaining modes
	 * need it here
	 */
	pgwin32_signal_initialize();
#endif

	if (argc > 1 && FUNC21(argv[1], "--boot") == 0)
		FUNC0(argc, argv);	/* does not return */
	else if (argc > 1 && FUNC21(argv[1], "--describe-config") == 0)
		FUNC1();			/* does not return */
	else if (argc > 1 && FUNC21(argv[1], "--single") == 0)
		FUNC4(argc, argv,
					 NULL,		/* no dbname */
					 FUNC22(FUNC13(progname)));	/* does not return */
	else
		FUNC5(argc, argv); /* does not return */
	FUNC7();					/* should not get here */
}