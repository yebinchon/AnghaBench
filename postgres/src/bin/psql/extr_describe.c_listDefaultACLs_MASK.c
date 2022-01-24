#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sverbuf ;
struct TYPE_11__ {int translate_header; int const* translate_columns; int /*<<< orphan*/  n_translate_columns; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
typedef  TYPE_1__ printQueryOpt ;
struct TYPE_13__ {int sversion; int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; int /*<<< orphan*/  db; TYPE_1__ popt; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  DEFACLOBJ_FUNCTION ; 
 int /*<<< orphan*/  DEFACLOBJ_NAMESPACE ; 
 int /*<<< orphan*/  DEFACLOBJ_RELATION ; 
 int /*<<< orphan*/  DEFACLOBJ_SEQUENCE ; 
 int /*<<< orphan*/  DEFACLOBJ_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,char const*,int,int,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

bool
FUNC14(const char *pattern)
{
	PQExpBufferData buf;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;
	static const bool translate_columns[] = {false, false, true, false};

	if (pset.sversion < 90000)
	{
		char		sverbuf[32];

		FUNC8("The server (version %s) does not support altering default privileges.",
					 FUNC4(pset.sversion, false,
										   sverbuf, sizeof(sverbuf)));
		return true;
	}

	FUNC6(&buf);

	FUNC11(&buf,
					  "SELECT pg_catalog.pg_get_userbyid(d.defaclrole) AS \"%s\",\n"
					  "  n.nspname AS \"%s\",\n"
					  "  CASE d.defaclobjtype WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' WHEN '%c' THEN '%s' END AS \"%s\",\n"
					  "  ",
					  FUNC5("Owner"),
					  FUNC5("Schema"),
					  DEFACLOBJ_RELATION,
					  FUNC5("table"),
					  DEFACLOBJ_SEQUENCE,
					  FUNC5("sequence"),
					  DEFACLOBJ_FUNCTION,
					  FUNC5("function"),
					  DEFACLOBJ_TYPE,
					  FUNC5("type"),
					  DEFACLOBJ_NAMESPACE,
					  FUNC5("schema"),
					  FUNC5("Type"));

	FUNC9(&buf, "d.defaclacl");

	FUNC3(&buf, "\nFROM pg_catalog.pg_default_acl d\n"
						 "     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = d.defaclnamespace\n");

	FUNC12(pset.db, &buf, pattern, false, false,
						  NULL,
						  "n.nspname",
						  "pg_catalog.pg_get_userbyid(d.defaclrole)",
						  NULL);

	FUNC3(&buf, "ORDER BY 1, 2, 3;");

	res = FUNC1(buf.data);
	if (!res)
	{
		FUNC13(&buf);
		return false;
	}

	myopt.nullPrint = NULL;
	FUNC11(&buf, FUNC2("Default access privileges"));
	myopt.title = buf.data;
	myopt.translate_header = true;
	myopt.translate_columns = translate_columns;
	myopt.n_translate_columns = FUNC7(translate_columns);

	FUNC10(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC13(&buf);
	FUNC0(res);
	return true;
}