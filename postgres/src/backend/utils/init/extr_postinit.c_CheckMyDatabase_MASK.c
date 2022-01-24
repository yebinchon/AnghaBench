#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ datconnlimit; int /*<<< orphan*/  datctype; int /*<<< orphan*/  datcollate; int /*<<< orphan*/  encoding; int /*<<< orphan*/  datallowconn; int /*<<< orphan*/  datname; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_database ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CONNECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DATABASEOID ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERRCODE_TOO_MANY_CONNECTIONS ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_DATABASE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  LC_COLLATE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGC_BACKEND ; 
 int /*<<< orphan*/  PGC_INTERNAL ; 
 int /*<<< orphan*/  PGC_S_DYNAMIC_DEFAULT ; 
 int /*<<< orphan*/  PGC_S_OVERRIDE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC21 (char const*,char*) ; 

__attribute__((used)) static void
FUNC22(const char *name, bool am_superuser, bool override_allow_connections)
{
	HeapTuple	tup;
	Form_pg_database dbform;
	char	   *collate;
	char	   *ctype;

	/* Fetch our pg_database row normally, via syscache */
	tup = FUNC9(DATABASEOID, FUNC7(MyDatabaseId));
	if (!FUNC4(tup))
		FUNC13(ERROR, "cache lookup failed for database %u", MyDatabaseId);
	dbform = (Form_pg_database) FUNC1(tup);

	/* This recheck is strictly paranoia */
	if (FUNC21(name, FUNC6(dbform->datname)) != 0)
		FUNC14(FATAL,
				(FUNC15(ERRCODE_UNDEFINED_DATABASE),
				 FUNC18("database \"%s\" has disappeared from pg_database",
						name),
				 FUNC16("Database OID %u now seems to belong to \"%s\".",
						   MyDatabaseId, FUNC6(dbform->datname))));

	/*
	 * Check permissions to connect to the database.
	 *
	 * These checks are not enforced when in standalone mode, so that there is
	 * a way to recover from disabling all access to all databases, for
	 * example "UPDATE pg_database SET datallowconn = false;".
	 *
	 * We do not enforce them for autovacuum worker processes either.
	 */
	if (IsUnderPostmaster && !FUNC5())
	{
		/*
		 * Check that the database is currently allowing connections.
		 */
		if (!dbform->datallowconn && !override_allow_connections)
			FUNC14(FATAL,
					(FUNC15(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
					 FUNC18("database \"%s\" is not currently accepting connections",
							name)));

		/*
		 * Check privilege to connect to the database.  (The am_superuser test
		 * is redundant, but since we have the flag, might as well check it
		 * and save a few cycles.)
		 */
		if (!am_superuser &&
			FUNC19(MyDatabaseId, FUNC3(),
								 ACL_CONNECT) != ACLCHECK_OK)
			FUNC14(FATAL,
					(FUNC15(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC18("permission denied for database \"%s\"", name),
					 FUNC16("User does not have CONNECT privilege.")));

		/*
		 * Check connection limit for this database.
		 *
		 * There is a race condition here --- we create our PGPROC before
		 * checking for other PGPROCs.  If two backends did this at about the
		 * same time, they might both think they were over the limit, while
		 * ideally one should succeed and one fail.  Getting that to work
		 * exactly seems more trouble than it is worth, however; instead we
		 * just document that the connection limit is approximate.
		 */
		if (dbform->datconnlimit >= 0 &&
			!am_superuser &&
			FUNC0(MyDatabaseId) > dbform->datconnlimit)
			FUNC14(FATAL,
					(FUNC15(ERRCODE_TOO_MANY_CONNECTIONS),
					 FUNC18("too many connections for database \"%s\"",
							name)));
	}

	/*
	 * OK, we're golden.  Next to-do item is to save the encoding info out of
	 * the pg_database tuple.
	 */
	FUNC11(dbform->encoding);
	/* Record it as a GUC internal option, too */
	FUNC10("server_encoding", FUNC2(),
					PGC_INTERNAL, PGC_S_OVERRIDE);
	/* If we have no other source of client_encoding, use server encoding */
	FUNC10("client_encoding", FUNC2(),
					PGC_BACKEND, PGC_S_DYNAMIC_DEFAULT);

	/* assign locale variables */
	collate = FUNC6(dbform->datcollate);
	ctype = FUNC6(dbform->datctype);

	if (FUNC20(LC_COLLATE, collate) == NULL)
		FUNC14(FATAL,
				(FUNC18("database locale is incompatible with operating system"),
				 FUNC16("The database was initialized with LC_COLLATE \"%s\", "
						   " which is not recognized by setlocale().", collate),
				 FUNC17("Recreate the database with another locale or install the missing locale.")));

	if (FUNC20(LC_CTYPE, ctype) == NULL)
		FUNC14(FATAL,
				(FUNC18("database locale is incompatible with operating system"),
				 FUNC16("The database was initialized with LC_CTYPE \"%s\", "
						   " which is not recognized by setlocale().", ctype),
				 FUNC17("Recreate the database with another locale or install the missing locale.")));

	/* Make the locale settings visible as GUC variables, too */
	FUNC10("lc_collate", collate, PGC_INTERNAL, PGC_S_OVERRIDE);
	FUNC10("lc_ctype", ctype, PGC_INTERNAL, PGC_S_OVERRIDE);

	FUNC12();

	FUNC8(tup);
}