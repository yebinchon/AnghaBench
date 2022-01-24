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
typedef  int /*<<< orphan*/  ProtocolVersion ;
typedef  int /*<<< orphan*/  GucSource ;
typedef  scalar_t__ GucContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int EchoQuery ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 int IsBinaryUpgrade ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  MAXPGPATH ; 
 int /*<<< orphan*/  OutputFileName ; 
 scalar_t__ PGC_POSTMASTER ; 
 int /*<<< orphan*/  PGC_S_ARGV ; 
 int /*<<< orphan*/  PGC_S_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int UseSemiNewlineNewline ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int FUNC9 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ opterr ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 void* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* userDoption ; 

void
FUNC15(int argc, char *argv[], GucContext ctx,
						  const char **dbname)
{
	bool		secure = (ctx == PGC_POSTMASTER);
	int			errs = 0;
	GucSource	gucsource;
	int			flag;

	if (secure)
	{
		gucsource = PGC_S_ARGV; /* switches came from command line */

		/* Ignore the initial --single argument, if present */
		if (argc > 1 && FUNC12(argv[1], "--single") == 0)
		{
			argv++;
			argc--;
		}
	}
	else
	{
		gucsource = PGC_S_CLIENT;	/* switches came from client */
	}

#ifdef HAVE_INT_OPTERR

	/*
	 * Turn this off because it's either printed to stderr and not the log
	 * where we'd want it, or argv[0] is now "--single", which would make for
	 * a weird error message.  We print our own error message below.
	 */
	opterr = 0;
#endif

	/*
	 * Parse command-line options.  CAUTION: keep this in sync with
	 * postmaster/postmaster.c (the option sets should not conflict) and with
	 * the common help() function in main/main.c.
	 */
	while ((flag = FUNC9(argc, argv, "B:bc:C:D:d:EeFf:h:ijk:lN:nOo:Pp:r:S:sTt:v:W:-:")) != -1)
	{
		switch (flag)
		{
			case 'B':
				FUNC1("shared_buffers", optarg, ctx, gucsource);
				break;

			case 'b':
				/* Undocumented flag used for binary upgrades */
				if (secure)
					IsBinaryUpgrade = true;
				break;

			case 'C':
				/* ignored for consistency with the postmaster */
				break;

			case 'D':
				if (secure)
					userDoption = FUNC13(optarg);
				break;

			case 'd':
				FUNC10(FUNC2(optarg), ctx, gucsource);
				break;

			case 'E':
				if (secure)
					EchoQuery = true;
				break;

			case 'e':
				FUNC1("datestyle", "euro", ctx, gucsource);
				break;

			case 'F':
				FUNC1("fsync", "false", ctx, gucsource);
				break;

			case 'f':
				if (!FUNC11(optarg, ctx, gucsource))
					errs++;
				break;

			case 'h':
				FUNC1("listen_addresses", optarg, ctx, gucsource);
				break;

			case 'i':
				FUNC1("listen_addresses", "*", ctx, gucsource);
				break;

			case 'j':
				if (secure)
					UseSemiNewlineNewline = true;
				break;

			case 'k':
				FUNC1("unix_socket_directories", optarg, ctx, gucsource);
				break;

			case 'l':
				FUNC1("ssl", "true", ctx, gucsource);
				break;

			case 'N':
				FUNC1("max_connections", optarg, ctx, gucsource);
				break;

			case 'n':
				/* ignored for consistency with postmaster */
				break;

			case 'O':
				FUNC1("allow_system_table_mods", "true", ctx, gucsource);
				break;

			case 'o':
				errs++;
				break;

			case 'P':
				FUNC1("ignore_system_indexes", "true", ctx, gucsource);
				break;

			case 'p':
				FUNC1("port", optarg, ctx, gucsource);
				break;

			case 'r':
				/* send output (stdout and stderr) to the given file */
				if (secure)
					FUNC14(OutputFileName, optarg, MAXPGPATH);
				break;

			case 'S':
				FUNC1("work_mem", optarg, ctx, gucsource);
				break;

			case 's':
				FUNC1("log_statement_stats", "true", ctx, gucsource);
				break;

			case 'T':
				/* ignored for consistency with the postmaster */
				break;

			case 't':
				{
					const char *tmp = FUNC8(optarg);

					if (tmp)
						FUNC1(tmp, "true", ctx, gucsource);
					else
						errs++;
					break;
				}

			case 'v':

				/*
				 * -v is no longer used in normal operation, since
				 * FrontendProtocol is already set before we get here. We keep
				 * the switch only for possible use in standalone operation,
				 * in case we ever support using normal FE/BE protocol with a
				 * standalone backend.
				 */
				if (secure)
					FrontendProtocol = (ProtocolVersion) FUNC2(optarg);
				break;

			case 'W':
				FUNC1("post_auth_delay", optarg, ctx, gucsource);
				break;

			case 'c':
			case '-':
				{
					char	   *name,
							   *value;

					FUNC0(optarg, &name, &value);
					if (!value)
					{
						if (flag == '-')
							FUNC3(ERROR,
									(FUNC4(ERRCODE_SYNTAX_ERROR),
									 FUNC6("--%s requires a value",
											optarg)));
						else
							FUNC3(ERROR,
									(FUNC4(ERRCODE_SYNTAX_ERROR),
									 FUNC6("-c %s requires a value",
											optarg)));
					}
					FUNC1(name, value, ctx, gucsource);
					FUNC7(name);
					if (value)
						FUNC7(value);
					break;
				}

			default:
				errs++;
				break;
		}

		if (errs)
			break;
	}

	/*
	 * Optional database name should be there only if *dbname is NULL.
	 */
	if (!errs && dbname && *dbname == NULL && argc - optind >= 1)
		*dbname = FUNC13(argv[optind++]);

	if (errs || argc != optind)
	{
		if (errs)
			optind--;			/* complain about the previous argument */

		/* spell the error message a bit differently depending on context */
		if (IsUnderPostmaster)
			FUNC3(FATAL,
					(FUNC4(ERRCODE_SYNTAX_ERROR),
					 FUNC6("invalid command-line argument for server process: %s", argv[optind]),
					 FUNC5("Try \"%s --help\" for more information.", progname)));
		else
			FUNC3(FATAL,
					(FUNC4(ERRCODE_SYNTAX_ERROR),
					 FUNC6("%s: invalid command-line argument: %s",
							progname, argv[optind]),
					 FUNC5("Try \"%s --help\" for more information.", progname)));
	}

	/*
	 * Reset getopt(3) library so that it will work correctly in subprocesses
	 * or when this function is called a second time with another array.
	 */
	optind = 1;
#ifdef HAVE_INT_OPTRESET
	optreset = 1;				/* some systems need this too */
#endif
}