#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ searchpath; } ;
struct TYPE_14__ {char const* currSchema; int /*<<< orphan*/  connection; TYPE_1__ public; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 char const* FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(ArchiveHandle *AH, const char *schemaName)
{
	PQExpBuffer qry;

	/*
	 * If there was a SEARCHPATH TOC entry, we're supposed to just stay with
	 * that search_path rather than switching to entry-specific paths.
	 * Otherwise, it's an old archive that will not restore correctly unless
	 * we set the search_path as it's expecting.
	 */
	if (AH->public.searchpath)
		return;

	if (!schemaName || *schemaName == '\0' ||
		(AH->currSchema && FUNC13(AH->currSchema, schemaName) == 0))
		return;					/* no need to do anything */

	qry = FUNC8();

	FUNC6(qry, "SET search_path = %s",
					  FUNC10(schemaName));
	if (FUNC13(schemaName, "pg_catalog") != 0)
		FUNC7(qry, ", pg_catalog");

	if (FUNC4(AH))
	{
		PGresult   *res;

		res = FUNC2(AH->connection, qry->data);

		if (!res || FUNC3(res) != PGRES_COMMAND_OK)
			FUNC14(AH,
								  "could not set search_path to \"%s\": %s",
								  schemaName, FUNC1(AH->connection));

		FUNC0(res);
	}
	else
		FUNC5(AH, "%s;\n\n", qry->data);

	if (AH->currSchema)
		FUNC11(AH->currSchema);
	AH->currSchema = FUNC12(schemaName);

	FUNC9(qry);
}