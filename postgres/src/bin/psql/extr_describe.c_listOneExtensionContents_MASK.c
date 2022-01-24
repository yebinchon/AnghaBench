#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int translate_header; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
typedef  TYPE_1__ printQueryOpt ;
struct TYPE_10__ {int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; TYPE_1__ popt; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,char const*,...) ; 
 TYPE_4__ pset ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC8(const char *extname, const char *oid)
{
	PQExpBufferData buf;
	PGresult   *res;
	PQExpBufferData title;
	printQueryOpt myopt = pset.popt;

	FUNC4(&buf);
	FUNC6(&buf,
					  "SELECT pg_catalog.pg_describe_object(classid, objid, 0) AS \"%s\"\n"
					  "FROM pg_catalog.pg_depend\n"
					  "WHERE refclassid = 'pg_catalog.pg_extension'::pg_catalog.regclass AND refobjid = '%s' AND deptype = 'e'\n"
					  "ORDER BY 1;",
					  FUNC3("Object description"),
					  oid);

	res = FUNC1(buf.data);
	FUNC7(&buf);
	if (!res)
		return false;

	myopt.nullPrint = NULL;
	FUNC4(&title);
	FUNC6(&title, FUNC2("Objects in extension \"%s\""), extname);
	myopt.title = title.data;
	myopt.translate_header = true;

	FUNC5(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC7(&title);
	FUNC0(res);
	return true;
}