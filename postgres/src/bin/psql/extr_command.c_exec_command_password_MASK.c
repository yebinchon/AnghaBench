#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pw2 ;
typedef  int /*<<< orphan*/  pw1 ;
typedef  int /*<<< orphan*/  backslashResult ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  OT_SQLID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ pset ; 
 char* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int,int) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static backslashResult
FUNC18(PsqlScanState scan_state, bool active_branch)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *opt0 = FUNC14(scan_state,
												  OT_SQLID, NULL, true);
		char		pw1[100];
		char		pw2[100];

		FUNC15("Enter new password: ", pw1, sizeof(pw1), false);
		FUNC15("Enter it again: ", pw2, sizeof(pw2), false);

		if (FUNC16(pw1, pw2) != 0)
		{
			FUNC11("Passwords didn't match.");
			success = false;
		}
		else
		{
			char	   *user;
			char	   *encrypted_password;

			if (opt0)
				user = opt0;
			else
				user = FUNC4(pset.db);

			encrypted_password = FUNC1(pset.db, pw1, user, NULL);

			if (!encrypted_password)
			{
				FUNC12("%s", FUNC2(pset.db));
				success = false;
			}
			else
			{
				PQExpBufferData buf;
				PGresult   *res;

				FUNC10(&buf);
				FUNC13(&buf, "ALTER USER %s PASSWORD ",
								  FUNC7(user));
				FUNC6(&buf, encrypted_password, pset.db);
				res = FUNC5(buf.data);
				FUNC17(&buf);
				if (!res)
					success = false;
				else
					FUNC0(res);
				FUNC3(encrypted_password);
			}
		}

		if (opt0)
			FUNC8(opt0);
	}
	else
		FUNC9(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}