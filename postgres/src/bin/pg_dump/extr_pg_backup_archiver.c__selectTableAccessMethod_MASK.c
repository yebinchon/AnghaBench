#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* currTableAm; int /*<<< orphan*/  connection; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
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
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 char* FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(ArchiveHandle *AH, const char *tableam)
{
	PQExpBuffer cmd;
	const char *want,
			   *have;

	have = AH->currTableAm;
	want = tableam;

	if (!want)
		return;

	if (have && FUNC11(want, have) == 0)
		return;

	cmd = FUNC7();
	FUNC6(cmd, "SET default_table_access_method = %s;", FUNC9(want));

	if (FUNC4(AH))
	{
		PGresult   *res;

		res = FUNC2(AH->connection, cmd->data);

		if (!res || FUNC3(res) != PGRES_COMMAND_OK)
			FUNC12(AH,
								  "could not set default_table_access_method: %s",
								  FUNC1(AH->connection));

		FUNC0(res);
	}
	else
		FUNC5(AH, "%s\n\n", cmd->data);

	FUNC8(cmd);

	AH->currTableAm = FUNC10(want);
}