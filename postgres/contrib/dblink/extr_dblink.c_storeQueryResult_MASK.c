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
struct TYPE_4__ {int /*<<< orphan*/ * last_res; int /*<<< orphan*/ * cur_res; } ;
typedef  TYPE_1__ storeInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_SINGLE_TUPLE ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ volatile*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static PGresult *
FUNC12(volatile storeInfo *sinfo, PGconn *conn, const char *sql)
{
	bool		first = true;
	int			nestlevel = -1;
	PGresult   *res;

	if (!FUNC5(conn, sql))
		FUNC8(ERROR, "could not send query: %s", FUNC9(FUNC2(conn)));

	if (!FUNC6(conn))	/* shouldn't fail */
		FUNC8(ERROR, "failed to set single-row mode for dblink query");

	for (;;)
	{
		FUNC0();

		sinfo->cur_res = FUNC3(conn);
		if (!sinfo->cur_res)
			break;

		if (FUNC4(sinfo->cur_res) == PGRES_SINGLE_TUPLE)
		{
			/* got one row from possibly-bigger resultset */

			/*
			 * Set GUCs to ensure we read GUC-sensitive data types correctly.
			 * We shouldn't do this until we have a row in hand, to ensure
			 * libpq has seen any earlier ParameterStatus protocol messages.
			 */
			if (first && nestlevel < 0)
				nestlevel = FUNC7(conn);

			FUNC11(sinfo, sinfo->cur_res, first);

			FUNC1(sinfo->cur_res);
			sinfo->cur_res = NULL;
			first = false;
		}
		else
		{
			/* if empty resultset, fill tuplestore header */
			if (first && FUNC4(sinfo->cur_res) == PGRES_TUPLES_OK)
				FUNC11(sinfo, sinfo->cur_res, first);

			/* store completed result at last_res */
			FUNC1(sinfo->last_res);
			sinfo->last_res = sinfo->cur_res;
			sinfo->cur_res = NULL;
			first = true;
		}
	}

	/* clean up GUC settings, if we changed any */
	FUNC10(nestlevel);

	/* return last_res */
	res = sinfo->last_res;
	sinfo->last_res = NULL;
	return res;
}