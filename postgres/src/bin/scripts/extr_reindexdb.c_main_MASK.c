#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_4__ {int /*<<< orphan*/ * head; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ SimpleStringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  REINDEX_DATABASE ; 
 int /*<<< orphan*/  REINDEX_INDEX ; 
 int /*<<< orphan*/  REINDEX_SCHEMA ; 
 int /*<<< orphan*/  REINDEX_SYSTEM ; 
 int /*<<< orphan*/  REINDEX_TABLE ; 
 int TRI_DEFAULT ; 
 int TRI_NO ; 
 int TRI_YES ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  help ; 
#define  no_argument 129 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,char const*,char const*,int,char const*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ ,TYPE_1__*,char const*,char const*,char const*,int,char const*,int,int,int,int) ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC18(int argc, char *argv[])
{
	static struct option long_options[] = {
		{"host", required_argument, NULL, 'h'},
		{"port", required_argument, NULL, 'p'},
		{"username", required_argument, NULL, 'U'},
		{"no-password", no_argument, NULL, 'w'},
		{"password", no_argument, NULL, 'W'},
		{"echo", no_argument, NULL, 'e'},
		{"quiet", no_argument, NULL, 'q'},
		{"schema", required_argument, NULL, 'S'},
		{"dbname", required_argument, NULL, 'd'},
		{"all", no_argument, NULL, 'a'},
		{"system", no_argument, NULL, 's'},
		{"table", required_argument, NULL, 't'},
		{"index", required_argument, NULL, 'i'},
		{"jobs", required_argument, NULL, 'j'},
		{"verbose", no_argument, NULL, 'v'},
		{"concurrently", no_argument, NULL, 1},
		{"maintenance-db", required_argument, NULL, 2},
		{NULL, 0, NULL, 0}
	};

	const char *progname;
	int			optindex;
	int			c;

	const char *dbname = NULL;
	const char *maintenance_db = NULL;
	const char *host = NULL;
	const char *port = NULL;
	const char *username = NULL;
	enum trivalue prompt_password = TRI_DEFAULT;
	bool		syscatalog = false;
	bool		alldb = false;
	bool		echo = false;
	bool		quiet = false;
	bool		verbose = false;
	bool		concurrently = false;
	SimpleStringList indexes = {NULL, NULL};
	SimpleStringList tables = {NULL, NULL};
	SimpleStringList schemas = {NULL, NULL};
	int			concurrentCons = 1;

	FUNC11(argv[0]);
	progname = FUNC5(argv[0]);
	FUNC15(argv[0], FUNC0("pgscripts"));

	FUNC9(argc, argv, "reindexdb", help);

	/* process command-line options */
	while ((c = FUNC8(argc, argv, "h:p:U:wWeqS:d:ast:i:j:v", long_options, &optindex)) != -1)
	{
		switch (c)
		{
			case 'h':
				host = FUNC12(optarg);
				break;
			case 'p':
				port = FUNC12(optarg);
				break;
			case 'U':
				username = FUNC12(optarg);
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
			case 'S':
				FUNC17(&schemas, optarg);
				break;
			case 'd':
				dbname = FUNC12(optarg);
				break;
			case 'a':
				alldb = true;
				break;
			case 's':
				syscatalog = true;
				break;
			case 't':
				FUNC17(&tables, optarg);
				break;
			case 'i':
				FUNC17(&indexes, optarg);
				break;
			case 'j':
				concurrentCons = FUNC2(optarg);
				if (concurrentCons <= 0)
				{
					FUNC10("number of parallel jobs must be at least 1");
					FUNC3(1);
				}
				break;
			case 'v':
				verbose = true;
				break;
			case 1:
				concurrently = true;
				break;
			case 2:
				maintenance_db = FUNC12(optarg);
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
		FUNC10("too many command-line arguments (first is \"%s\")",
					 argv[optind]);
		FUNC4(stderr, FUNC1("Try \"%s --help\" for more information.\n"), progname);
		FUNC3(1);
	}

	FUNC16();

	if (alldb)
	{
		if (dbname)
		{
			FUNC10("cannot reindex all databases and a specific one at the same time");
			FUNC3(1);
		}
		if (syscatalog)
		{
			FUNC10("cannot reindex all databases and system catalogs at the same time");
			FUNC3(1);
		}
		if (schemas.head != NULL)
		{
			FUNC10("cannot reindex specific schema(s) in all databases");
			FUNC3(1);
		}
		if (tables.head != NULL)
		{
			FUNC10("cannot reindex specific table(s) in all databases");
			FUNC3(1);
		}
		if (indexes.head != NULL)
		{
			FUNC10("cannot reindex specific index(es) in all databases");
			FUNC3(1);
		}

		FUNC13(maintenance_db, host, port, username,
							  prompt_password, progname, echo, quiet, verbose,
							  concurrently, concurrentCons);
	}
	else if (syscatalog)
	{
		if (schemas.head != NULL)
		{
			FUNC10("cannot reindex specific schema(s) and system catalogs at the same time");
			FUNC3(1);
		}
		if (tables.head != NULL)
		{
			FUNC10("cannot reindex specific table(s) and system catalogs at the same time");
			FUNC3(1);
		}
		if (indexes.head != NULL)
		{
			FUNC10("cannot reindex specific index(es) and system catalogs at the same time");
			FUNC3(1);
		}

		if (concurrentCons > 1)
		{
			FUNC10("cannot use multiple jobs to reindex system catalogs");
			FUNC3(1);
		}

		if (dbname == NULL)
		{
			if (FUNC7("PGDATABASE"))
				dbname = FUNC7("PGDATABASE");
			else if (FUNC7("PGUSER"))
				dbname = FUNC7("PGUSER");
			else
				dbname = FUNC6(progname);
		}

		FUNC14(dbname, REINDEX_SYSTEM, NULL, host,
							 port, username, prompt_password, progname,
							 echo, verbose, concurrently, 1);
	}
	else
	{
		/*
		 * Index-level REINDEX is not supported with multiple jobs as we
		 * cannot control the concurrent processing of multiple indexes
		 * depending on the same relation.
		 */
		if (concurrentCons > 1 && indexes.head != NULL)
		{
			FUNC10("cannot use multiple jobs to reindex indexes");
			FUNC3(1);
		}

		if (dbname == NULL)
		{
			if (FUNC7("PGDATABASE"))
				dbname = FUNC7("PGDATABASE");
			else if (FUNC7("PGUSER"))
				dbname = FUNC7("PGUSER");
			else
				dbname = FUNC6(progname);
		}

		if (schemas.head != NULL)
			FUNC14(dbname, REINDEX_SCHEMA, &schemas, host,
								 port, username, prompt_password, progname,
								 echo, verbose, concurrently, concurrentCons);

		if (indexes.head != NULL)
			FUNC14(dbname, REINDEX_INDEX, &indexes, host,
								 port, username, prompt_password, progname,
								 echo, verbose, concurrently, 1);

		if (tables.head != NULL)
			FUNC14(dbname, REINDEX_TABLE, &tables, host,
								 port, username, prompt_password, progname,
								 echo, verbose, concurrently,
								 concurrentCons);

		/*
		 * reindex database only if neither index nor table nor schema is
		 * specified
		 */
		if (indexes.head == NULL && tables.head == NULL && schemas.head == NULL)
			FUNC14(dbname, REINDEX_DATABASE, NULL, host,
								 port, username, prompt_password, progname,
								 echo, verbose, concurrently, concurrentCons);
	}

	FUNC3(0);
}