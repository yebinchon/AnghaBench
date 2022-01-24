#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_7__ {char* data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int TRI_DEFAULT ; 
 int TRI_NO ; 
 int TRI_YES ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char*,char*,char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC14 (char*) ; 
 char* FUNC15 (char const*) ; 
 char* FUNC16 (char*) ; 
 int FUNC17 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  FUNC18 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  help ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
#define  no_argument 129 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 scalar_t__ FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 void* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,char*,char*) ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC27 (char const*,char*) ; 

int
FUNC28(int argc, char *argv[])
{
	static struct option long_options[] = {
		{"host", required_argument, NULL, 'h'},
		{"port", required_argument, NULL, 'p'},
		{"username", required_argument, NULL, 'U'},
		{"no-password", no_argument, NULL, 'w'},
		{"password", no_argument, NULL, 'W'},
		{"echo", no_argument, NULL, 'e'},
		{"owner", required_argument, NULL, 'O'},
		{"tablespace", required_argument, NULL, 'D'},
		{"template", required_argument, NULL, 'T'},
		{"encoding", required_argument, NULL, 'E'},
		{"lc-collate", required_argument, NULL, 1},
		{"lc-ctype", required_argument, NULL, 2},
		{"locale", required_argument, NULL, 'l'},
		{"maintenance-db", required_argument, NULL, 3},
		{NULL, 0, NULL, 0}
	};

	const char *progname;
	int			optindex;
	int			c;

	const char *dbname = NULL;
	const char *maintenance_db = NULL;
	char	   *comment = NULL;
	char	   *host = NULL;
	char	   *port = NULL;
	char	   *username = NULL;
	enum trivalue prompt_password = TRI_DEFAULT;
	bool		echo = false;
	char	   *owner = NULL;
	char	   *tablespace = NULL;
	char	   *template = NULL;
	char	   *encoding = NULL;
	char	   *lc_collate = NULL;
	char	   *lc_ctype = NULL;
	char	   *locale = NULL;

	PQExpBufferData sql;

	PGconn	   *conn;
	PGresult   *result;

	FUNC22(argv[0]);
	progname = FUNC14(argv[0]);
	FUNC26(argv[0], FUNC0("pgscripts"));

	FUNC18(argc, argv, "createdb", help);

	while ((c = FUNC17(argc, argv, "h:p:U:wWeO:D:T:E:l:", long_options, &optindex)) != -1)
	{
		switch (c)
		{
			case 'h':
				host = FUNC23(optarg);
				break;
			case 'p':
				port = FUNC23(optarg);
				break;
			case 'U':
				username = FUNC23(optarg);
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
			case 'O':
				owner = FUNC23(optarg);
				break;
			case 'D':
				tablespace = FUNC23(optarg);
				break;
			case 'T':
				template = FUNC23(optarg);
				break;
			case 'E':
				encoding = FUNC23(optarg);
				break;
			case 1:
				lc_collate = FUNC23(optarg);
				break;
			case 2:
				lc_ctype = FUNC23(optarg);
				break;
			case 'l':
				locale = FUNC23(optarg);
				break;
			case 3:
				maintenance_db = FUNC23(optarg);
				break;
			default:
				FUNC13(stderr, FUNC6("Try \"%s --help\" for more information.\n"), progname);
				FUNC11(1);
		}
	}

	switch (argc - optind)
	{
		case 0:
			break;
		case 1:
			dbname = argv[optind];
			break;
		case 2:
			dbname = argv[optind];
			comment = argv[optind + 1];
			break;
		default:
			FUNC21("too many command-line arguments (first is \"%s\")",
						 argv[optind + 2]);
			FUNC13(stderr, FUNC6("Try \"%s --help\" for more information.\n"), progname);
			FUNC11(1);
	}

	if (locale)
	{
		if (lc_ctype)
		{
			FUNC21("only one of --locale and --lc-ctype can be specified");
			FUNC11(1);
		}
		if (lc_collate)
		{
			FUNC21("only one of --locale and --lc-collate can be specified");
			FUNC11(1);
		}
		lc_ctype = locale;
		lc_collate = locale;
	}

	if (encoding)
	{
		if (FUNC20(encoding) < 0)
		{
			FUNC21("\"%s\" is not a valid encoding name", encoding);
			FUNC11(1);
		}
	}

	if (dbname == NULL)
	{
		if (FUNC16("PGDATABASE"))
			dbname = FUNC16("PGDATABASE");
		else if (FUNC16("PGUSER"))
			dbname = FUNC16("PGUSER");
		else
			dbname = FUNC15(progname);
	}

	FUNC19(&sql);

	FUNC7(&sql, "CREATE DATABASE %s",
					  FUNC12(dbname));

	if (owner)
		FUNC7(&sql, " OWNER %s", FUNC12(owner));
	if (tablespace)
		FUNC7(&sql, " TABLESPACE %s", FUNC12(tablespace));
	if (encoding)
		FUNC7(&sql, " ENCODING '%s'", encoding);
	if (template)
		FUNC7(&sql, " TEMPLATE %s", FUNC12(template));
	if (lc_collate)
		FUNC7(&sql, " LC_COLLATE '%s'", lc_collate);
	if (lc_ctype)
		FUNC7(&sql, " LC_CTYPE '%s'", lc_ctype);

	FUNC8(&sql, ';');

	/* No point in trying to use postgres db when creating postgres db. */
	if (maintenance_db == NULL && FUNC27(dbname, "postgres") == 0)
		maintenance_db = "template1";

	conn = FUNC10(maintenance_db, host, port, username,
									  prompt_password, progname, echo);

	if (echo)
		FUNC24("%s\n", sql.data);
	result = FUNC3(conn, sql.data);

	if (FUNC5(result) != PGRES_COMMAND_OK)
	{
		FUNC21("database creation failed: %s", FUNC2(conn));
		FUNC4(conn);
		FUNC11(1);
	}

	FUNC1(result);

	if (comment)
	{
		FUNC25(&sql, "COMMENT ON DATABASE %s IS ", FUNC12(dbname));
		FUNC9(&sql, comment, conn);
		FUNC8(&sql, ';');

		if (echo)
			FUNC24("%s\n", sql.data);
		result = FUNC3(conn, sql.data);

		if (FUNC5(result) != PGRES_COMMAND_OK)
		{
			FUNC21("comment creation failed (database was created): %s",
						 FUNC2(conn));
			FUNC4(conn);
			FUNC11(1);
		}

		FUNC1(result);
	}

	FUNC4(conn);

	FUNC11(0);
}