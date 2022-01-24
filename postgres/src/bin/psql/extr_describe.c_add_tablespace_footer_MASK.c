#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* footer; } ;
typedef  TYPE_2__ printTableContent ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {scalar_t__ data; } ;
typedef  TYPE_3__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 char RELKIND_INDEX ; 
 char RELKIND_MATVIEW ; 
 char RELKIND_PARTITIONED_INDEX ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 char RELKIND_TOASTVALUE ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC11(printTableContent *const cont, char relkind,
					  Oid tablespace, const bool newline)
{
	/* relkinds for which we support tablespaces */
	if (relkind == RELKIND_RELATION ||
		relkind == RELKIND_MATVIEW ||
		relkind == RELKIND_INDEX ||
		relkind == RELKIND_PARTITIONED_TABLE ||
		relkind == RELKIND_PARTITIONED_INDEX ||
		relkind == RELKIND_TOASTVALUE)
	{
		/*
		 * We ignore the database default tablespace so that users not using
		 * tablespaces don't need to know about them.  This case also covers
		 * pre-8.0 servers, for which tablespace will always be 0.
		 */
		if (tablespace != 0)
		{
			PGresult   *result = NULL;
			PQExpBufferData buf;

			FUNC6(&buf);
			FUNC9(&buf,
							  "SELECT spcname FROM pg_catalog.pg_tablespace\n"
							  "WHERE oid = '%u';", tablespace);
			result = FUNC3(buf.data);
			if (!result)
			{
				FUNC10(&buf);
				return;
			}
			/* Should always be the case, but.... */
			if (FUNC2(result) > 0)
			{
				if (newline)
				{
					/* Add the tablespace as a new footer */
					FUNC9(&buf, FUNC4("Tablespace: \"%s\""),
									  FUNC1(result, 0, 0));
					FUNC7(cont, buf.data);
				}
				else
				{
					/* Append the tablespace to the latest footer */
					FUNC9(&buf, "%s", cont->footer->data);

					/*-------
					   translator: before this string there's an index description like
					   '"foo_pkey" PRIMARY KEY, btree (a)' */
					FUNC5(&buf, FUNC4(", tablespace \"%s\""),
									  FUNC1(result, 0, 0));
					FUNC8(cont, buf.data);
				}
			}
			FUNC0(result);
			FUNC10(&buf);
		}
	}
}