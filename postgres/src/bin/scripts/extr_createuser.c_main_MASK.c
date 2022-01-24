#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; char member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  const member_1; } ;
typedef  int /*<<< orphan*/  pw2 ;
typedef  int /*<<< orphan*/  newuser_buf ;
typedef  int /*<<< orphan*/  newpassword_buf ;
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_13__ {char* data; } ;
struct TYPE_12__ {TYPE_1__* head; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_11__ {char const* val; struct TYPE_11__* next; } ;
typedef  TYPE_1__ SimpleStringListCell ;
typedef  TYPE_2__ SimpleStringList ;
typedef  TYPE_3__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int TRI_DEFAULT ; 
 int TRI_NO ; 
 int TRI_YES ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*,char*,char*,int,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 char* FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC17 (char*) ; 
 char* FUNC18 (char const*) ; 
 char* FUNC19 (char*) ; 
 int FUNC20 (int,char**,char*,struct option*,int*) ; 
 int /*<<< orphan*/  FUNC21 (int,char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  help ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
#define  no_argument 129 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 char* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,char*,char*) ; 
#define  required_argument 128 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC31 (char*,char*) ; 
 scalar_t__ FUNC32 (char*) ; 

int
FUNC33(int argc, char *argv[])
{
	static struct option long_options[] = {
		{"host", required_argument, NULL, 'h'},
		{"port", required_argument, NULL, 'p'},
		{"username", required_argument, NULL, 'U'},
		{"role", required_argument, NULL, 'g'},
		{"no-password", no_argument, NULL, 'w'},
		{"password", no_argument, NULL, 'W'},
		{"echo", no_argument, NULL, 'e'},
		{"createdb", no_argument, NULL, 'd'},
		{"no-createdb", no_argument, NULL, 'D'},
		{"superuser", no_argument, NULL, 's'},
		{"no-superuser", no_argument, NULL, 'S'},
		{"createrole", no_argument, NULL, 'r'},
		{"no-createrole", no_argument, NULL, 'R'},
		{"inherit", no_argument, NULL, 'i'},
		{"no-inherit", no_argument, NULL, 'I'},
		{"login", no_argument, NULL, 'l'},
		{"no-login", no_argument, NULL, 'L'},
		{"replication", no_argument, NULL, 1},
		{"no-replication", no_argument, NULL, 2},
		{"interactive", no_argument, NULL, 3},
		{"connection-limit", required_argument, NULL, 'c'},
		{"pwprompt", no_argument, NULL, 'P'},
		{"encrypted", no_argument, NULL, 'E'},
		{NULL, 0, NULL, 0}
	};

	const char *progname;
	int			optindex;
	int			c;
	const char *newuser = NULL;
	char	   *host = NULL;
	char	   *port = NULL;
	char	   *username = NULL;
	SimpleStringList roles = {NULL, NULL};
	enum trivalue prompt_password = TRI_DEFAULT;
	bool		echo = false;
	bool		interactive = false;
	char	   *conn_limit = NULL;
	bool		pwprompt = false;
	char	   *newpassword = NULL;
	char		newuser_buf[128];
	char		newpassword_buf[100];

	/* Tri-valued variables.  */
	enum trivalue createdb = TRI_DEFAULT,
				superuser = TRI_DEFAULT,
				createrole = TRI_DEFAULT,
				inherit = TRI_DEFAULT,
				login = TRI_DEFAULT,
				replication = TRI_DEFAULT;

	PQExpBufferData sql;

	PGconn	   *conn;
	PGresult   *result;

	FUNC24(argv[0]);
	progname = FUNC17(argv[0]);
	FUNC28(argv[0], FUNC0("pgscripts"));

	FUNC21(argc, argv, "createuser", help);

	while ((c = FUNC20(argc, argv, "h:p:U:g:wWedDsSrRiIlLc:PE",
							long_options, &optindex)) != -1)
	{
		switch (c)
		{
			case 'h':
				host = FUNC25(optarg);
				break;
			case 'p':
				port = FUNC25(optarg);
				break;
			case 'U':
				username = FUNC25(optarg);
				break;
			case 'g':
				FUNC30(&roles, optarg);
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
			case 'd':
				createdb = TRI_YES;
				break;
			case 'D':
				createdb = TRI_NO;
				break;
			case 's':
				superuser = TRI_YES;
				break;
			case 'S':
				superuser = TRI_NO;
				break;
			case 'r':
				createrole = TRI_YES;
				break;
			case 'R':
				createrole = TRI_NO;
				break;
			case 'i':
				inherit = TRI_YES;
				break;
			case 'I':
				inherit = TRI_NO;
				break;
			case 'l':
				login = TRI_YES;
				break;
			case 'L':
				login = TRI_NO;
				break;
			case 'c':
				conn_limit = FUNC25(optarg);
				break;
			case 'P':
				pwprompt = true;
				break;
			case 'E':
				/* no-op, accepted for backward compatibility */
				break;
			case 1:
				replication = TRI_YES;
				break;
			case 2:
				replication = TRI_NO;
				break;
			case 3:
				interactive = true;
				break;
			default:
				FUNC16(stderr, FUNC8("Try \"%s --help\" for more information.\n"), progname);
				FUNC14(1);
		}
	}

	switch (argc - optind)
	{
		case 0:
			break;
		case 1:
			newuser = argv[optind];
			break;
		default:
			FUNC23("too many command-line arguments (first is \"%s\")",
						 argv[optind + 1]);
			FUNC16(stderr, FUNC8("Try \"%s --help\" for more information.\n"), progname);
			FUNC14(1);
	}

	if (newuser == NULL)
	{
		if (interactive)
		{
			FUNC29("Enter name of role to add: ",
						  newuser_buf, sizeof(newuser_buf), true);
			newuser = newuser_buf;
		}
		else
		{
			if (FUNC19("PGUSER"))
				newuser = FUNC19("PGUSER");
			else
				newuser = FUNC18(progname);
		}
	}

	if (pwprompt)
	{
		char		pw2[100];

		FUNC29("Enter password for new role: ",
					  newpassword_buf, sizeof(newpassword_buf), false);
		FUNC29("Enter it again: ", pw2, sizeof(pw2), false);
		if (FUNC31(newpassword_buf, pw2) != 0)
		{
			FUNC16(stderr, "%s", FUNC8("Passwords didn't match.\n"));
			FUNC14(1);
		}
		newpassword = newpassword_buf;
	}

	if (superuser == 0)
	{
		if (interactive && FUNC32("Shall the new role be a superuser?"))
			superuser = TRI_YES;
		else
			superuser = TRI_NO;
	}

	if (superuser == TRI_YES)
	{
		/* Not much point in trying to restrict a superuser */
		createdb = TRI_YES;
		createrole = TRI_YES;
	}

	if (createdb == 0)
	{
		if (interactive && FUNC32("Shall the new role be allowed to create databases?"))
			createdb = TRI_YES;
		else
			createdb = TRI_NO;
	}

	if (createrole == 0)
	{
		if (interactive && FUNC32("Shall the new role be allowed to create more new roles?"))
			createrole = TRI_YES;
		else
			createrole = TRI_NO;
	}

	if (inherit == 0)
		inherit = TRI_YES;

	if (login == 0)
		login = TRI_YES;

	conn = FUNC13("postgres", host, port, username, prompt_password,
						   progname, echo, false, false);

	FUNC22(&sql);

	FUNC27(&sql, "CREATE ROLE %s", FUNC15(newuser));
	if (newpassword)
	{
		char	   *encrypted_password;

		FUNC11(&sql, " PASSWORD ");

		encrypted_password = FUNC2(conn,
												   newpassword,
												   newuser,
												   NULL);
		if (!encrypted_password)
		{
			FUNC23("password encryption failed: %s",
						 FUNC3(conn));
			FUNC14(1);
		}
		FUNC12(&sql, encrypted_password, conn);
		FUNC6(encrypted_password);
	}
	if (superuser == TRI_YES)
		FUNC11(&sql, " SUPERUSER");
	if (superuser == TRI_NO)
		FUNC11(&sql, " NOSUPERUSER");
	if (createdb == TRI_YES)
		FUNC11(&sql, " CREATEDB");
	if (createdb == TRI_NO)
		FUNC11(&sql, " NOCREATEDB");
	if (createrole == TRI_YES)
		FUNC11(&sql, " CREATEROLE");
	if (createrole == TRI_NO)
		FUNC11(&sql, " NOCREATEROLE");
	if (inherit == TRI_YES)
		FUNC11(&sql, " INHERIT");
	if (inherit == TRI_NO)
		FUNC11(&sql, " NOINHERIT");
	if (login == TRI_YES)
		FUNC11(&sql, " LOGIN");
	if (login == TRI_NO)
		FUNC11(&sql, " NOLOGIN");
	if (replication == TRI_YES)
		FUNC11(&sql, " REPLICATION");
	if (replication == TRI_NO)
		FUNC11(&sql, " NOREPLICATION");
	if (conn_limit != NULL)
		FUNC9(&sql, " CONNECTION LIMIT %s", conn_limit);
	if (roles.head != NULL)
	{
		SimpleStringListCell *cell;

		FUNC11(&sql, " IN ROLE ");

		for (cell = roles.head; cell; cell = cell->next)
		{
			if (cell->next)
				FUNC9(&sql, "%s,", FUNC15(cell->val));
			else
				FUNC11(&sql, FUNC15(cell->val));
		}
	}
	FUNC10(&sql, ';');

	if (echo)
		FUNC26("%s\n", sql.data);
	result = FUNC4(conn, sql.data);

	if (FUNC7(result) != PGRES_COMMAND_OK)
	{
		FUNC23("creation of new role failed: %s", FUNC3(conn));
		FUNC5(conn);
		FUNC14(1);
	}

	FUNC1(result);
	FUNC5(conn);
	FUNC14(0);
}