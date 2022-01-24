#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char const* data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  OPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  role_catalog ; 
 int server_version ; 

__attribute__((used)) static void
FUNC13(PGconn *conn, const char *username)
{
	PQExpBuffer buf = FUNC6();
	int			count = 1;
	bool		first = true;

	for (;;)
	{
		PGresult   *res;

		if (server_version >= 90000)
			FUNC11(buf, "SELECT setconfig[%d] FROM pg_db_role_setting WHERE "
							  "setdatabase = 0 AND setrole = "
							  "(SELECT oid FROM %s WHERE rolname = ", count, role_catalog);
		else if (server_version >= 80100)
			FUNC11(buf, "SELECT rolconfig[%d] FROM %s WHERE rolname = ", count, role_catalog);
		else
			FUNC11(buf, "SELECT useconfig[%d] FROM pg_shadow WHERE usename = ", count);
		FUNC5(buf, username, conn);
		if (server_version >= 90000)
			FUNC4(buf, ')');

		res = FUNC8(conn, buf->data);
		if (FUNC3(res) == 1 &&
			!FUNC1(res, 0, 0))
		{
			/* comment at section start, only if needed */
			if (first)
			{
				FUNC9(OPF, "--\n-- User Configurations\n--\n\n");
				first = false;
			}

			FUNC9(OPF, "--\n-- User Config \"%s\"\n--\n\n", username);
			FUNC12(buf);
			FUNC10(conn, FUNC2(res, 0, 0),
								   "ROLE", username, NULL, NULL,
								   buf);
			FUNC9(OPF, "%s", buf->data);
			FUNC0(res);
			count++;
		}
		else
		{
			FUNC0(res);
			break;
		}
	}

	FUNC7(buf);
}