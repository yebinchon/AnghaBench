#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* name; char* value; struct TYPE_5__* next; } ;
typedef  TYPE_1__ pgParameterStatus ;
struct TYPE_6__ {scalar_t__ client_encoding; int std_strings; int sversion; TYPE_1__* pstatus; scalar_t__ Pfdebug; } ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 scalar_t__ PG_SQL_ASCII ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char const*,char*,int*,int*,int*) ; 
 scalar_t__ static_client_encoding ; 
 int static_std_strings ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

void
FUNC8(PGconn *conn, const char *name, const char *value)
{
	pgParameterStatus *pstatus;
	pgParameterStatus *prev;

	if (conn->Pfdebug)
		FUNC0(conn->Pfdebug, "pqSaveParameterStatus: '%s' = '%s'\n",
				name, value);

	/*
	 * Forget any old information about the parameter
	 */
	for (pstatus = conn->pstatus, prev = NULL;
		 pstatus != NULL;
		 prev = pstatus, pstatus = pstatus->next)
	{
		if (FUNC5(pstatus->name, name) == 0)
		{
			if (prev)
				prev->next = pstatus->next;
			else
				conn->pstatus = pstatus->next;
			FUNC1(pstatus);		/* frees name and value strings too */
			break;
		}
	}

	/*
	 * Store new info as a single malloc block
	 */
	pstatus = (pgParameterStatus *) FUNC2(sizeof(pgParameterStatus) +
										   FUNC7(name) + FUNC7(value) + 2);
	if (pstatus)
	{
		char	   *ptr;

		ptr = ((char *) pstatus) + sizeof(pgParameterStatus);
		pstatus->name = ptr;
		FUNC6(ptr, name);
		ptr += FUNC7(name) + 1;
		pstatus->value = ptr;
		FUNC6(ptr, value);
		pstatus->next = conn->pstatus;
		conn->pstatus = pstatus;
	}

	/*
	 * Special hacks: remember client_encoding and
	 * standard_conforming_strings, and convert server version to a numeric
	 * form.  We keep the first two of these in static variables as well, so
	 * that PQescapeString and PQescapeBytea can behave somewhat sanely (at
	 * least in single-connection-using programs).
	 */
	if (FUNC5(name, "client_encoding") == 0)
	{
		conn->client_encoding = FUNC3(value);
		/* if we don't recognize the encoding name, fall back to SQL_ASCII */
		if (conn->client_encoding < 0)
			conn->client_encoding = PG_SQL_ASCII;
		static_client_encoding = conn->client_encoding;
	}
	else if (FUNC5(name, "standard_conforming_strings") == 0)
	{
		conn->std_strings = (FUNC5(value, "on") == 0);
		static_std_strings = conn->std_strings;
	}
	else if (FUNC5(name, "server_version") == 0)
	{
		int			cnt;
		int			vmaj,
					vmin,
					vrev;

		cnt = FUNC4(value, "%d.%d.%d", &vmaj, &vmin, &vrev);

		if (cnt == 3)
		{
			/* old style, e.g. 9.6.1 */
			conn->sversion = (100 * vmaj + vmin) * 100 + vrev;
		}
		else if (cnt == 2)
		{
			if (vmaj >= 10)
			{
				/* new style, e.g. 10.1 */
				conn->sversion = 100 * 100 * vmaj + vmin;
			}
			else
			{
				/* old style without minor version, e.g. 9.6devel */
				conn->sversion = (100 * vmaj + vmin) * 100;
			}
		}
		else if (cnt == 1)
		{
			/* new style without minor version, e.g. 10devel */
			conn->sversion = 100 * 100 * vmaj;
		}
		else
			conn->sversion = 0; /* unknown */
	}
}