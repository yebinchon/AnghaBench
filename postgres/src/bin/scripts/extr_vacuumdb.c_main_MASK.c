#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int and_analyze; int analyze_only; int freeze; int full; int verbose; int disable_page_skipping; int skip_locked; void* min_mxid_age; void* min_xid_age; } ;
typedef  TYPE_1__ vacuumingOptions ;
typedef  int /*<<< orphan*/  vacopts ;
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_9__ {int /*<<< orphan*/ * head; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ SimpleStringList ;

/* Variables and functions */
 int ANALYZE_NO_STAGE ; 
 int ANALYZE_NUM_STAGES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TRI_DEFAULT ; 
 int TRI_NO ; 
 int TRI_YES ; 
 char* FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  help ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
#define  no_argument 129 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int,char const*,char*,char*,char*,int,int,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (char const*,TYPE_1__*,int,TYPE_2__*,char*,char*,char*,int,int,char const*,int,int) ; 

int
FUNC19(int argc, char *argv[])
{
	static struct option long_options[] = {
		{"host", required_argument, NULL, 'h'},
		{"port", required_argument, NULL, 'p'},
		{"username", required_argument, NULL, 'U'},
		{"no-password", no_argument, NULL, 'w'},
		{"password", no_argument, NULL, 'W'},
		{"echo", no_argument, NULL, 'e'},
		{"quiet", no_argument, NULL, 'q'},
		{"dbname", required_argument, NULL, 'd'},
		{"analyze", no_argument, NULL, 'z'},
		{"analyze-only", no_argument, NULL, 'Z'},
		{"freeze", no_argument, NULL, 'F'},
		{"all", no_argument, NULL, 'a'},
		{"table", required_argument, NULL, 't'},
		{"full", no_argument, NULL, 'f'},
		{"verbose", no_argument, NULL, 'v'},
		{"jobs", required_argument, NULL, 'j'},
		{"maintenance-db", required_argument, NULL, 2},
		{"analyze-in-stages", no_argument, NULL, 3},
		{"disable-page-skipping", no_argument, NULL, 4},
		{"skip-locked", no_argument, NULL, 5},
		{"min-xid-age", required_argument, NULL, 6},
		{"min-mxid-age", required_argument, NULL, 7},
		{NULL, 0, NULL, 0}
	};

	const char *progname;
	int			optindex;
	int			c;
	const char *dbname = NULL;
	const char *maintenance_db = NULL;
	char	   *host = NULL;
	char	   *port = NULL;
	char	   *username = NULL;
	enum trivalue prompt_password = TRI_DEFAULT;
	bool		echo = false;
	bool		quiet = false;
	vacuumingOptions vacopts;
	bool		analyze_in_stages = false;
	bool		alldb = false;
	SimpleStringList tables = {NULL, NULL};
	int			concurrentCons = 1;
	int			tbl_count = 0;

	/* initialize options to all false */
	FUNC10(&vacopts, 0, sizeof(vacopts));

	FUNC12(argv[0]);
	progname = FUNC5(argv[0]);
	FUNC14(argv[0], FUNC0("pgscripts"));

	FUNC9(argc, argv, "vacuumdb", help);

	while ((c = FUNC8(argc, argv, "h:p:U:wWeqd:zZFat:fvj:", long_options, &optindex)) != -1)
	{
		switch (c)
		{
			case 'h':
				host = FUNC13(optarg);
				break;
			case 'p':
				port = FUNC13(optarg);
				break;
			case 'U':
				username = FUNC13(optarg);
				break;
			case 'w':
				prompt_password = TRI_NO;
				break;
			case 'W':
				prompt_password = TRI_YES;
				break;
			case 'e':
				echo = true;
				break;
			case 'q':
				quiet = true;
				break;
			case 'd':
				dbname = FUNC13(optarg);
				break;
			case 'z':
				vacopts.and_analyze = true;
				break;
			case 'Z':
				vacopts.analyze_only = true;
				break;
			case 'F':
				vacopts.freeze = true;
				break;
			case 'a':
				alldb = true;
				break;
			case 't':
				{
					FUNC16(&tables, optarg);
					tbl_count++;
					break;
				}
			case 'f':
				vacopts.full = true;
				break;
			case 'v':
				vacopts.verbose = true;
				break;
			case 'j':
				concurrentCons = FUNC2(optarg);
				if (concurrentCons <= 0)
				{
					FUNC11("number of parallel jobs must be at least 1");
					FUNC3(1);
				}
				break;
			case 2:
				maintenance_db = FUNC13(optarg);
				break;
			case 3:
				analyze_in_stages = vacopts.analyze_only = true;
				break;
			case 4:
				vacopts.disable_page_skipping = true;
				break;
			case 5:
				vacopts.skip_locked = true;
				break;
			case 6:
				vacopts.min_xid_age = FUNC2(optarg);
				if (vacopts.min_xid_age <= 0)
				{
					FUNC11("minimum transaction ID age must be at least 1");
					FUNC3(1);
				}
				break;
			case 7:
				vacopts.min_mxid_age = FUNC2(optarg);
				if (vacopts.min_mxid_age <= 0)
				{
					FUNC11("minimum multixact ID age must be at least 1");
					FUNC3(1);
				}
				break;
			default:
				FUNC4(stderr, FUNC1("Try \"%s --help\" for more information.\n"), progname);
				FUNC3(1);
		}
	}

	/*
	 * Non-option argument specifies database name as long as it wasn't
	 * already specified with -d / --dbname
	 */
	if (optind < argc && dbname == NULL)
	{
		dbname = argv[optind];
		optind++;
	}

	if (optind < argc)
	{
		FUNC11("too many command-line arguments (first is \"%s\")",
					 argv[optind]);
		FUNC4(stderr, FUNC1("Try \"%s --help\" for more information.\n"), progname);
		FUNC3(1);
	}

	if (vacopts.analyze_only)
	{
		if (vacopts.full)
		{
			FUNC11("cannot use the \"%s\" option when performing only analyze",
						 "full");
			FUNC3(1);
		}
		if (vacopts.freeze)
		{
			FUNC11("cannot use the \"%s\" option when performing only analyze",
						 "freeze");
			FUNC3(1);
		}
		if (vacopts.disable_page_skipping)
		{
			FUNC11("cannot use the \"%s\" option when performing only analyze",
						 "disable-page-skipping");
			FUNC3(1);
		}
		/* allow 'and_analyze' with 'analyze_only' */
	}

	FUNC15();

	/* Avoid opening extra connections. */
	if (tbl_count && (concurrentCons > tbl_count))
		concurrentCons = tbl_count;

	if (alldb)
	{
		if (dbname)
		{
			FUNC11("cannot vacuum all databases and a specific one at the same time");
			FUNC3(1);
		}
		if (tables.head != NULL)
		{
			FUNC11("cannot vacuum specific table(s) in all databases");
			FUNC3(1);
		}

		FUNC17(&vacopts,
							 analyze_in_stages,
							 maintenance_db,
							 host, port, username, prompt_password,
							 concurrentCons,
							 progname, echo, quiet);
	}
	else
	{
		if (dbname == NULL)
		{
			if (FUNC7("PGDATABASE"))
				dbname = FUNC7("PGDATABASE");
			else if (FUNC7("PGUSER"))
				dbname = FUNC7("PGUSER");
			else
				dbname = FUNC6(progname);
		}

		if (analyze_in_stages)
		{
			int			stage;

			for (stage = 0; stage < ANALYZE_NUM_STAGES; stage++)
			{
				FUNC18(dbname, &vacopts,
									stage,
									&tables,
									host, port, username, prompt_password,
									concurrentCons,
									progname, echo, quiet);
			}
		}
		else
			FUNC18(dbname, &vacopts,
								ANALYZE_NO_STAGE,
								&tables,
								host, port, username, prompt_password,
								concurrentCons,
								progname, echo, quiet);
	}

	FUNC3(0);
}