#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {void* oid; void* tableoid; } ;
struct TYPE_24__ {int /*<<< orphan*/  dump; int /*<<< orphan*/ * namespace; void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_23__ {int remoteVersion; TYPE_4__* dopt; } ;
struct TYPE_22__ {int /*<<< orphan*/  binary_upgrade; } ;
struct TYPE_21__ {TYPE_6__ dobj; void* initrsrvacl; void* initsrvacl; void* rsrvacl; void* srvacl; void* srvoptions; void* srvversion; void* srvtype; void* srvfdw; void* rolname; } ;
struct TYPE_20__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ ForeignServerInfo ;
typedef  TYPE_4__ DumpOptions ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  DO_FOREIGN_SERVER ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  username_subquery ; 

ForeignServerInfo *
FUNC15(Archive *fout, int *numForeignServers)
{
	DumpOptions *dopt = fout->dopt;
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	ForeignServerInfo *srvinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_srvname;
	int			i_rolname;
	int			i_srvfdw;
	int			i_srvtype;
	int			i_srvversion;
	int			i_srvacl;
	int			i_rsrvacl;
	int			i_initsrvacl;
	int			i_initrsrvacl;
	int			i_srvoptions;

	/* Before 8.4, there are no foreign servers */
	if (fout->remoteVersion < 80400)
	{
		*numForeignServers = 0;
		return NULL;
	}

	query = FUNC10();

	if (fout->remoteVersion >= 90600)
	{
		PQExpBuffer acl_subquery = FUNC10();
		PQExpBuffer racl_subquery = FUNC10();
		PQExpBuffer initacl_subquery = FUNC10();
		PQExpBuffer initracl_subquery = FUNC10();

		FUNC9(acl_subquery, racl_subquery, initacl_subquery,
						initracl_subquery, "f.srvacl", "f.srvowner", "'S'",
						dopt->binary_upgrade);

		FUNC7(query, "SELECT f.tableoid, f.oid, f.srvname, "
						  "(%s f.srvowner) AS rolname, "
						  "f.srvfdw, f.srvtype, f.srvversion, "
						  "%s AS srvacl, "
						  "%s AS rsrvacl, "
						  "%s AS initsrvacl, "
						  "%s AS initrsrvacl, "
						  "array_to_string(ARRAY("
						  "SELECT quote_ident(option_name) || ' ' || "
						  "quote_literal(option_value) "
						  "FROM pg_options_to_table(f.srvoptions) "
						  "ORDER BY option_name"
						  "), E',\n    ') AS srvoptions "
						  "FROM pg_foreign_server f "
						  "LEFT JOIN pg_init_privs pip "
						  "ON (f.oid = pip.objoid "
						  "AND pip.classoid = 'pg_foreign_server'::regclass "
						  "AND pip.objsubid = 0) ",
						  username_subquery,
						  acl_subquery->data,
						  racl_subquery->data,
						  initacl_subquery->data,
						  initracl_subquery->data);

		FUNC11(acl_subquery);
		FUNC11(racl_subquery);
		FUNC11(initacl_subquery);
		FUNC11(initracl_subquery);
	}
	else
	{
		FUNC7(query, "SELECT tableoid, oid, srvname, "
						  "(%s srvowner) AS rolname, "
						  "srvfdw, srvtype, srvversion, srvacl, "
						  "NULL AS rsrvacl, "
						  "NULL AS initsrvacl, NULL AS initrsrvacl, "
						  "array_to_string(ARRAY("
						  "SELECT quote_ident(option_name) || ' ' || "
						  "quote_literal(option_value) "
						  "FROM pg_options_to_table(srvoptions) "
						  "ORDER BY option_name"
						  "), E',\n    ') AS srvoptions "
						  "FROM pg_foreign_server",
						  username_subquery);
	}

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC6(res);
	*numForeignServers = ntups;

	srvinfo = (ForeignServerInfo *) FUNC12(ntups * sizeof(ForeignServerInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_srvname = FUNC3(res, "srvname");
	i_rolname = FUNC3(res, "rolname");
	i_srvfdw = FUNC3(res, "srvfdw");
	i_srvtype = FUNC3(res, "srvtype");
	i_srvversion = FUNC3(res, "srvversion");
	i_srvacl = FUNC3(res, "srvacl");
	i_rsrvacl = FUNC3(res, "rsrvacl");
	i_initsrvacl = FUNC3(res, "initsrvacl");
	i_initrsrvacl = FUNC3(res, "initrsrvacl");
	i_srvoptions = FUNC3(res, "srvoptions");

	for (i = 0; i < ntups; i++)
	{
		srvinfo[i].dobj.objType = DO_FOREIGN_SERVER;
		srvinfo[i].dobj.catId.tableoid = FUNC8(FUNC5(res, i, i_tableoid));
		srvinfo[i].dobj.catId.oid = FUNC8(FUNC5(res, i, i_oid));
		FUNC0(&srvinfo[i].dobj);
		srvinfo[i].dobj.name = FUNC13(FUNC5(res, i, i_srvname));
		srvinfo[i].dobj.namespace = NULL;
		srvinfo[i].rolname = FUNC13(FUNC5(res, i, i_rolname));
		srvinfo[i].srvfdw = FUNC8(FUNC5(res, i, i_srvfdw));
		srvinfo[i].srvtype = FUNC13(FUNC5(res, i, i_srvtype));
		srvinfo[i].srvversion = FUNC13(FUNC5(res, i, i_srvversion));
		srvinfo[i].srvoptions = FUNC13(FUNC5(res, i, i_srvoptions));
		srvinfo[i].srvacl = FUNC13(FUNC5(res, i, i_srvacl));
		srvinfo[i].rsrvacl = FUNC13(FUNC5(res, i, i_rsrvacl));
		srvinfo[i].initsrvacl = FUNC13(FUNC5(res, i, i_initsrvacl));
		srvinfo[i].initrsrvacl = FUNC13(FUNC5(res, i, i_initrsrvacl));

		/* Decide whether we want to dump it */
		FUNC14(&(srvinfo[i].dobj), fout);

		/* Do not try to dump ACL if no ACL exists. */
		if (FUNC4(res, i, i_srvacl) && FUNC4(res, i, i_rsrvacl) &&
			FUNC4(res, i, i_initsrvacl) &&
			FUNC4(res, i, i_initrsrvacl))
			srvinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC11(query);

	return srvinfo;
}