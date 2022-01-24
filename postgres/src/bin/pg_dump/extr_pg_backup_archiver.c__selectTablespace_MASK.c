#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* ropt; } ;
struct TYPE_16__ {char* currTablespace; int /*<<< orphan*/  connection; TYPE_1__ public; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
struct TYPE_14__ {scalar_t__ noTablespace; } ;
typedef  TYPE_2__ RestoreOptions ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ ArchiveHandle ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(ArchiveHandle *AH, const char *tablespace)
{
	RestoreOptions *ropt = AH->public.ropt;
	PQExpBuffer qry;
	const char *want,
			   *have;

	/* do nothing in --no-tablespaces mode */
	if (ropt->noTablespace)
		return;

	have = AH->currTablespace;
	want = tablespace;

	/* no need to do anything for non-tablespace object */
	if (!want)
		return;

	if (have && FUNC13(want, have) == 0)
		return;					/* no need to do anything */

	qry = FUNC8();

	if (FUNC13(want, "") == 0)
	{
		/* We want the tablespace to be the database's default */
		FUNC7(qry, "SET default_tablespace = ''");
	}
	else
	{
		/* We want an explicit tablespace */
		FUNC6(qry, "SET default_tablespace = %s", FUNC10(want));
	}

	if (FUNC4(AH))
	{
		PGresult   *res;

		res = FUNC2(AH->connection, qry->data);

		if (!res || FUNC3(res) != PGRES_COMMAND_OK)
			FUNC14(AH,
								  "could not set default_tablespace to %s: %s",
								  FUNC10(want), FUNC1(AH->connection));

		FUNC0(res);
	}
	else
		FUNC5(AH, "%s;\n\n", qry->data);

	if (AH->currTablespace)
		FUNC11(AH->currTablespace);
	AH->currTablespace = FUNC12(want);

	FUNC9(qry);
}