#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  passbuf ;
struct TYPE_10__ {char* savedPassword; scalar_t__ promptPassword; int /*<<< orphan*/  connection; } ;
struct TYPE_9__ {char* data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 int /*<<< orphan*/ * FUNC0 (char const**,char const**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRI_NO ; 
 scalar_t__ TRI_YES ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  notice_processor ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*,char const*) ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 

__attribute__((used)) static PGconn *
FUNC24(ArchiveHandle *AH, const char *reqdb, const char *requser)
{
	PQExpBufferData connstr;
	PGconn	   *newConn;
	const char *newdb;
	const char *newuser;
	char	   *password;
	char		passbuf[100];
	bool		new_pass;

	if (!reqdb)
		newdb = FUNC3(AH->connection);
	else
		newdb = reqdb;

	if (!requser || FUNC22(requser) == 0)
		newuser = FUNC11(AH->connection);
	else
		newuser = requser;

	FUNC19("connecting to database \"%s\" as user \"%s\"",
				newdb, newuser);

	password = AH->savedPassword;

	if (AH->promptPassword == TRI_YES && password == NULL)
	{
		FUNC21("Password: ", passbuf, sizeof(passbuf), false);
		password = passbuf;
	}

	FUNC18(&connstr);
	FUNC14(&connstr, "dbname=");
	FUNC13(&connstr, newdb);

	do
	{
		const char *keywords[7];
		const char *values[7];

		keywords[0] = "host";
		values[0] = FUNC6(AH->connection);
		keywords[1] = "port";
		values[1] = FUNC8(AH->connection);
		keywords[2] = "user";
		values[2] = newuser;
		keywords[3] = "password";
		values[3] = password;
		keywords[4] = "dbname";
		values[4] = connstr.data;
		keywords[5] = "fallback_application_name";
		values[5] = progname;
		keywords[6] = NULL;
		values[6] = NULL;

		new_pass = false;
		newConn = FUNC0(keywords, values, true);

		if (!newConn)
			FUNC15("could not reconnect to database");

		if (FUNC10(newConn) == CONNECTION_BAD)
		{
			if (!FUNC1(newConn))
				FUNC15("could not reconnect to database: %s",
					  FUNC4(newConn));
			FUNC5(newConn);

			if (password)
				FUNC16(stderr, "Password incorrect\n");

			FUNC16(stderr, "Connecting to %s as %s\n",
					newdb, newuser);

			if (AH->promptPassword != TRI_NO)
			{
				FUNC21("Password: ", passbuf, sizeof(passbuf), false);
				password = passbuf;
			}
			else
				FUNC15("connection needs password");

			new_pass = true;
		}
	} while (new_pass);

	/*
	 * We want to remember connection's actual password, whether or not we got
	 * it by prompting.  So we don't just store the password variable.
	 */
	if (FUNC2(newConn))
	{
		if (AH->savedPassword)
			FUNC17(AH->savedPassword);
		AH->savedPassword = FUNC20(FUNC7(newConn));
	}

	FUNC23(&connstr);

	/* check for version mismatch */
	FUNC12(AH);

	FUNC9(newConn, notice_processor, NULL);

	return newConn;
}