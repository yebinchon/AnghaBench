#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  connection; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,TYPE_2__*) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(ArchiveHandle *AH, const char *user)
{
	PQExpBuffer cmd = FUNC9();

	FUNC7(cmd, "SET SESSION AUTHORIZATION ");

	/*
	 * SQL requires a string literal here.  Might as well be correct.
	 */
	if (user && *user)
		FUNC8(cmd, user, AH);
	else
		FUNC7(cmd, "DEFAULT");
	FUNC6(cmd, ';');

	if (FUNC4(AH))
	{
		PGresult   *res;

		res = FUNC2(AH->connection, cmd->data);

		if (!res || FUNC3(res) != PGRES_COMMAND_OK)
			/* NOT warn_or_exit_horribly... use -O instead to skip this. */
			FUNC11("could not set session user to \"%s\": %s",
				  user, FUNC1(AH->connection));

		FUNC0(res);
	}
	else
		FUNC5(AH, "%s\n\n", cmd->data);

	FUNC10(cmd);
}