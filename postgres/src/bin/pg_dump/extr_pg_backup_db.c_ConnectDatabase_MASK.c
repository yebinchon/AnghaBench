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
typedef  scalar_t__ trivalue ;
typedef  int /*<<< orphan*/  passbuf ;
struct TYPE_4__ {char* savedPassword; scalar_t__ connection; scalar_t__ promptPassword; } ;
typedef  TYPE_1__ ArchiveHandle ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS_SECURE_SEARCH_PATH_SQL ; 
 scalar_t__ CONNECTION_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const**,char const**,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ TRI_NO ; 
 scalar_t__ TRI_YES ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  notice_processor ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int,int) ; 

void
FUNC17(Archive *AHX,
				const char *dbname,
				const char *pghost,
				const char *pgport,
				const char *username,
				trivalue prompt_password)
{
	ArchiveHandle *AH = (ArchiveHandle *) AHX;
	char	   *password;
	char		passbuf[100];
	bool		new_pass;

	if (AH->connection)
		FUNC12("already connected to a database");

	password = AH->savedPassword;

	if (prompt_password == TRI_YES && password == NULL)
	{
		FUNC16("Password: ", passbuf, sizeof(passbuf), false);
		password = passbuf;
	}
	AH->promptPassword = prompt_password;

	/*
	 * Start the connection.  Loop until we have a password if requested by
	 * backend.
	 */
	do
	{
		const char *keywords[7];
		const char *values[7];

		keywords[0] = "host";
		values[0] = pghost;
		keywords[1] = "port";
		values[1] = pgport;
		keywords[2] = "user";
		values[2] = username;
		keywords[3] = "password";
		values[3] = password;
		keywords[4] = "dbname";
		values[4] = dbname;
		keywords[5] = "fallback_application_name";
		values[5] = progname;
		keywords[6] = NULL;
		values[6] = NULL;

		new_pass = false;
		AH->connection = FUNC2(keywords, values, true);

		if (!AH->connection)
			FUNC12("could not connect to database");

		if (FUNC10(AH->connection) == CONNECTION_BAD &&
			FUNC3(AH->connection) &&
			password == NULL &&
			prompt_password != TRI_NO)
		{
			FUNC7(AH->connection);
			FUNC16("Password: ", passbuf, sizeof(passbuf), false);
			password = passbuf;
			new_pass = true;
		}
	} while (new_pass);

	/* check to see that the backend connection was successfully made */
	if (FUNC10(AH->connection) == CONNECTION_BAD)
		FUNC12("connection to database \"%s\" failed: %s",
			  FUNC5(AH->connection) ? FUNC5(AH->connection) : "",
			  FUNC6(AH->connection));

	/* Start strict; later phases may override this. */
	FUNC1(FUNC0((Archive *) AH,
										ALWAYS_SECURE_SEARCH_PATH_SQL));

	/*
	 * We want to remember connection's actual password, whether or not we got
	 * it by prompting.  So we don't just store the password variable.
	 */
	if (FUNC4(AH->connection))
	{
		if (AH->savedPassword)
			FUNC13(AH->savedPassword);
		AH->savedPassword = FUNC14(FUNC8(AH->connection));
	}

	/* check for version mismatch */
	FUNC11(AH);

	FUNC9(AH->connection, notice_processor, NULL);

	/* arrange for SIGINT to issue a query cancel on this connection */
	FUNC15(AH, AH->connection);
}