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
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_5__ {TYPE_1__* head; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/ * val; struct TYPE_4__* next; } ;
typedef  TYPE_1__ SimpleStringListCell ;
typedef  TYPE_2__ SimpleStringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TRI_DEFAULT ; 
 int TRI_NO ; 
 int TRI_YES ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char const*,char*,char*,char*,int,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int /*<<< orphan*/ *,char*,char*,char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*) ; 
 int FUNC9 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  help ; 
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

int
FUNC17(int argc, char *argv[])
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
		{"all", no_argument, NULL, 'a'},
		{"table", required_argument, NULL, 't'},
		{"verbose", no_argument, NULL, 'v'},
		{"maintenance-db", required_argument, NULL, 2},
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
	bool		alldb = false;
	bool		verbose = false;
	SimpleStringList tables = {NULL, NULL};

	FUNC12(argv[0]);
	progname = FUNC6(argv[0]);
	FUNC14(argv[0], FUNC0("pgscripts"));

	FUNC10(argc, argv, "clusterdb", help);

	while ((c = FUNC9(argc, argv, "h:p:U:wWeqd:at:v", long_options, &optindex)) != -1)
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
			case 'a':
				alldb = true;
				break;
			case 't':
				FUNC16(&tables, optarg);
				break;
			case 'v':
				verbose = true;
				break;
			case 2:
				maintenance_db = FUNC13(optarg);
				break;
			default:
				FUNC5(stderr, FUNC1("Try \"%s --help\" for more information.\n"), progname);
				FUNC4(1);
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
		FUNC5(stderr, FUNC1("Try \"%s --help\" for more information.\n"), progname);
		FUNC4(1);
	}

	FUNC15();

	if (alldb)
	{
		if (dbname)
		{
			FUNC11("cannot cluster all databases and a specific one at the same time");
			FUNC4(1);
		}

		if (tables.head != NULL)
		{
			FUNC11("cannot cluster specific table(s) in all databases");
			FUNC4(1);
		}

		FUNC2(verbose, maintenance_db, host, port, username, prompt_password,
							  progname, echo, quiet);
	}
	else
	{
		if (dbname == NULL)
		{
			if (FUNC8("PGDATABASE"))
				dbname = FUNC8("PGDATABASE");
			else if (FUNC8("PGUSER"))
				dbname = FUNC8("PGUSER");
			else
				dbname = FUNC7(progname);
		}

		if (tables.head != NULL)
		{
			SimpleStringListCell *cell;

			for (cell = tables.head; cell; cell = cell->next)
			{
				FUNC3(dbname, verbose, cell->val,
									 host, port, username, prompt_password,
									 progname, echo);
			}
		}
		else
			FUNC3(dbname, verbose, NULL,
								 host, port, username, prompt_password,
								 progname, echo);
	}

	FUNC4(0);
}