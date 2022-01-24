#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int default_footer; } ;
struct TYPE_11__ {int translate_header; TYPE_1__ topt; int /*<<< orphan*/ * footers; int /*<<< orphan*/  title; int /*<<< orphan*/ * nullPrint; } ;
typedef  TYPE_2__ printQueryOpt ;
struct TYPE_13__ {int /*<<< orphan*/  logfile; int /*<<< orphan*/  queryFout; TYPE_2__ popt; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_5__ pset ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static bool
FUNC9(const char *oid, const char *nspname, const char *cfgname,
					const char *pnspname, const char *prsname)
{
	PQExpBufferData buf,
				title;
	PGresult   *res;
	printQueryOpt myopt = pset.popt;

	FUNC5(&buf);

	FUNC7(&buf,
					  "SELECT\n"
					  "  ( SELECT t.alias FROM\n"
					  "    pg_catalog.ts_token_type(c.cfgparser) AS t\n"
					  "    WHERE t.tokid = m.maptokentype ) AS \"%s\",\n"
					  "  pg_catalog.btrim(\n"
					  "    ARRAY( SELECT mm.mapdict::pg_catalog.regdictionary\n"
					  "           FROM pg_catalog.pg_ts_config_map AS mm\n"
					  "           WHERE mm.mapcfg = m.mapcfg AND mm.maptokentype = m.maptokentype\n"
					  "           ORDER BY mapcfg, maptokentype, mapseqno\n"
					  "    ) :: pg_catalog.text,\n"
					  "  '{}') AS \"%s\"\n"
					  "FROM pg_catalog.pg_ts_config AS c, pg_catalog.pg_ts_config_map AS m\n"
					  "WHERE c.oid = '%s' AND m.mapcfg = c.oid\n"
					  "GROUP BY m.mapcfg, m.maptokentype, c.cfgparser\n"
					  "ORDER BY 1;",
					  FUNC4("Token"),
					  FUNC4("Dictionaries"),
					  oid);

	res = FUNC1(buf.data);
	FUNC8(&buf);
	if (!res)
		return false;

	FUNC5(&title);

	if (nspname)
		FUNC3(&title, FUNC2("Text search configuration \"%s.%s\""),
						  nspname, cfgname);
	else
		FUNC3(&title, FUNC2("Text search configuration \"%s\""),
						  cfgname);

	if (pnspname)
		FUNC3(&title, FUNC2("\nParser: \"%s.%s\""),
						  pnspname, prsname);
	else
		FUNC3(&title, FUNC2("\nParser: \"%s\""),
						  prsname);

	myopt.nullPrint = NULL;
	myopt.title = title.data;
	myopt.footers = NULL;
	myopt.topt.default_footer = false;
	myopt.translate_header = true;

	FUNC6(res, &myopt, pset.queryFout, false, pset.logfile);

	FUNC8(&title);

	FUNC0(res);
	return true;
}