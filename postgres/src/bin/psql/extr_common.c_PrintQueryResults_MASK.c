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
struct TYPE_2__ {int /*<<< orphan*/  queryFout; int /*<<< orphan*/  crosstab_flag; int /*<<< orphan*/  gexec_flag; int /*<<< orphan*/  gset_prefix; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
#define  PGRES_BAD_RESPONSE 135 
#define  PGRES_COMMAND_OK 134 
#define  PGRES_COPY_IN 133 
#define  PGRES_COPY_OUT 132 
#define  PGRES_EMPTY_QUERY 131 
#define  PGRES_FATAL_ERROR 130 
#define  PGRES_NONFATAL_ERROR 129 
#define  PGRES_TUPLES_OK 128 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int) ; 

__attribute__((used)) static bool
FUNC10(PGresult *results)
{
	bool		success;
	const char *cmdstatus;

	if (!results)
		return false;

	switch (FUNC2(results))
	{
		case PGRES_TUPLES_OK:
			/* store or execute or print the data ... */
			if (pset.gset_prefix)
				success = FUNC6(results);
			else if (pset.gexec_flag)
				success = FUNC0(results);
			else if (pset.crosstab_flag)
				success = FUNC5(results);
			else
				success = FUNC4(results);
			/* if it's INSERT/UPDATE/DELETE RETURNING, also print status */
			cmdstatus = FUNC1(results);
			if (FUNC9(cmdstatus, "INSERT", 6) == 0 ||
				FUNC9(cmdstatus, "UPDATE", 6) == 0 ||
				FUNC9(cmdstatus, "DELETE", 6) == 0)
				FUNC3(results);
			break;

		case PGRES_COMMAND_OK:
			FUNC3(results);
			success = true;
			break;

		case PGRES_EMPTY_QUERY:
			success = true;
			break;

		case PGRES_COPY_OUT:
		case PGRES_COPY_IN:
			/* nothing to do here */
			success = true;
			break;

		case PGRES_BAD_RESPONSE:
		case PGRES_NONFATAL_ERROR:
		case PGRES_FATAL_ERROR:
			success = false;
			break;

		default:
			success = false;
			FUNC8("unexpected PQresultStatus: %d",
						 FUNC2(results));
			break;
	}

	FUNC7(pset.queryFout);

	return success;
}