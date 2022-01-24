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
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int sversion; int /*<<< orphan*/  encoding; int /*<<< orphan*/  db; } ;
struct TYPE_12__ {char* data; int len; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int EditableObjectType ;

/* Variables and functions */
#define  EditableFunction 131 
#define  EditableView 130 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
#define  RELKIND_MATVIEW 129 
#define  RELKIND_VIEW 128 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ pset ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (char*) ; 

__attribute__((used)) static bool
FUNC19(EditableObjectType obj_type, Oid oid,
					  PQExpBuffer buf)
{
	bool		result = true;
	PQExpBuffer query = FUNC9();
	PGresult   *res;

	switch (obj_type)
	{
		case EditableFunction:
			FUNC15(query,
							  "SELECT pg_catalog.pg_get_functiondef(%u)",
							  oid);
			break;

		case EditableView:

			/*
			 * pg_get_viewdef() just prints the query, so we must prepend
			 * CREATE for ourselves.  We must fully qualify the view name to
			 * ensure the right view gets replaced.  Also, check relation kind
			 * to be sure it's a view.
			 *
			 * Starting with 9.2, views may have reloptions (security_barrier)
			 * and from 9.4 onwards they may also have WITH [LOCAL|CASCADED]
			 * CHECK OPTION.  These are not part of the view definition
			 * returned by pg_get_viewdef() and so need to be retrieved
			 * separately.  Materialized views (introduced in 9.3) may have
			 * arbitrary storage parameter reloptions.
			 */
			if (pset.sversion >= 90400)
			{
				FUNC15(query,
								  "SELECT nspname, relname, relkind, "
								  "pg_catalog.pg_get_viewdef(c.oid, true), "
								  "pg_catalog.array_remove(pg_catalog.array_remove(c.reloptions,'check_option=local'),'check_option=cascaded') AS reloptions, "
								  "CASE WHEN 'check_option=local' = ANY (c.reloptions) THEN 'LOCAL'::text "
								  "WHEN 'check_option=cascaded' = ANY (c.reloptions) THEN 'CASCADED'::text ELSE NULL END AS checkoption "
								  "FROM pg_catalog.pg_class c "
								  "LEFT JOIN pg_catalog.pg_namespace n "
								  "ON c.relnamespace = n.oid WHERE c.oid = %u",
								  oid);
			}
			else if (pset.sversion >= 90200)
			{
				FUNC15(query,
								  "SELECT nspname, relname, relkind, "
								  "pg_catalog.pg_get_viewdef(c.oid, true), "
								  "c.reloptions AS reloptions, "
								  "NULL AS checkoption "
								  "FROM pg_catalog.pg_class c "
								  "LEFT JOIN pg_catalog.pg_namespace n "
								  "ON c.relnamespace = n.oid WHERE c.oid = %u",
								  oid);
			}
			else
			{
				FUNC15(query,
								  "SELECT nspname, relname, relkind, "
								  "pg_catalog.pg_get_viewdef(c.oid, true), "
								  "NULL AS reloptions, "
								  "NULL AS checkoption "
								  "FROM pg_catalog.pg_class c "
								  "LEFT JOIN pg_catalog.pg_namespace n "
								  "ON c.relnamespace = n.oid WHERE c.oid = %u",
								  oid);
			}
			break;
	}

	if (!FUNC11(query->data))
	{
		FUNC10(query);
		return false;
	}
	res = FUNC1(pset.db, query->data);
	if (FUNC4(res) == PGRES_TUPLES_OK && FUNC3(res) == 1)
	{
		FUNC16(buf);
		switch (obj_type)
		{
			case EditableFunction:
				FUNC7(buf, FUNC2(res, 0, 0));
				break;

			case EditableView:
				{
					char	   *nspname = FUNC2(res, 0, 0);
					char	   *relname = FUNC2(res, 0, 1);
					char	   *relkind = FUNC2(res, 0, 2);
					char	   *viewdef = FUNC2(res, 0, 3);
					char	   *reloptions = FUNC2(res, 0, 4);
					char	   *checkoption = FUNC2(res, 0, 5);

					/*
					 * If the backend ever supports CREATE OR REPLACE
					 * MATERIALIZED VIEW, allow that here; but as of today it
					 * does not, so editing a matview definition in this way
					 * is impossible.
					 */
					switch (relkind[0])
					{
#ifdef NOT_USED
						case RELKIND_MATVIEW:
							appendPQExpBufferStr(buf, "CREATE OR REPLACE MATERIALIZED VIEW ");
							break;
#endif
						case RELKIND_VIEW:
							FUNC7(buf, "CREATE OR REPLACE VIEW ");
							break;
						default:
							FUNC14("\"%s.%s\" is not a view",
										 nspname, relname);
							result = false;
							break;
					}
					FUNC5(buf, "%s.", FUNC12(nspname));
					FUNC7(buf, FUNC12(relname));

					/* reloptions, if not an empty array "{}" */
					if (reloptions != NULL && FUNC18(reloptions) > 2)
					{
						FUNC7(buf, "\n WITH (");
						if (!FUNC8(buf, reloptions, "",
												   pset.encoding,
												   FUNC17()))
						{
							FUNC14("could not parse reloptions array");
							result = false;
						}
						FUNC6(buf, ')');
					}

					/* View definition from pg_get_viewdef (a SELECT query) */
					FUNC5(buf, " AS\n%s", viewdef);

					/* Get rid of the semicolon that pg_get_viewdef appends */
					if (buf->len > 0 && buf->data[buf->len - 1] == ';')
						buf->data[--(buf->len)] = '\0';

					/* WITH [LOCAL|CASCADED] CHECK OPTION */
					if (checkoption && checkoption[0] != '\0')
						FUNC5(buf, "\n WITH %s CHECK OPTION",
										  checkoption);
				}
				break;
		}
		/* Make sure result ends with a newline */
		if (buf->len > 0 && buf->data[buf->len - 1] != '\n')
			FUNC6(buf, '\n');
	}
	else
	{
		FUNC13(res);
		result = false;
	}

	FUNC0(res);
	FUNC10(query);

	return result;
}