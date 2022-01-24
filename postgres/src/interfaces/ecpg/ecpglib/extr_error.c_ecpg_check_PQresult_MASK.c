#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_EMPTY ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_ECPG_INTERNAL_ERROR ; 
#define  PGRES_BAD_RESPONSE 135 
#define  PGRES_COMMAND_OK 134 
#define  PGRES_COPY_IN 133 
#define  PGRES_COPY_OUT 132 
#define  PGRES_EMPTY_QUERY 131 
#define  PGRES_FATAL_ERROR 130 
#define  PGRES_NONFATAL_ERROR 129 
#define  PGRES_TUPLES_OK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

bool
FUNC8(PGresult *results, int lineno, PGconn *connection, enum COMPAT_MODE compat)
{
	if (results == NULL)
	{
		FUNC5("ecpg_check_PQresult on line %d: no result - %s", lineno, FUNC2(connection));
		FUNC7(lineno, NULL, connection, compat);
		return false;
	}

	switch (FUNC4(results))
	{

		case PGRES_TUPLES_OK:
			return true;
			break;
		case PGRES_EMPTY_QUERY:
			/* do nothing */
			FUNC6(lineno, ECPG_EMPTY, ECPG_SQLSTATE_ECPG_INTERNAL_ERROR, NULL);
			FUNC0(results);
			return false;
			break;
		case PGRES_COMMAND_OK:
			return true;
			break;
		case PGRES_NONFATAL_ERROR:
		case PGRES_FATAL_ERROR:
		case PGRES_BAD_RESPONSE:
			FUNC5("ecpg_check_PQresult on line %d: bad response - %s", lineno, FUNC3(results));
			FUNC7(lineno, results, connection, compat);
			FUNC0(results);
			return false;
			break;
		case PGRES_COPY_OUT:
			return true;
			break;
		case PGRES_COPY_IN:
			FUNC5("ecpg_check_PQresult on line %d: COPY IN data transfer in progress\n", lineno);
			FUNC1(connection);
			FUNC0(results);
			return false;
			break;
		default:
			FUNC5("ecpg_check_PQresult on line %d: unknown execution status type\n",
					 lineno);
			FUNC7(lineno, results, connection, compat);
			FUNC0(results);
			return false;
			break;
	}
}