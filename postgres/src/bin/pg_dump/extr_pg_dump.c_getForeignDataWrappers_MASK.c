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
struct TYPE_21__ {TYPE_6__ dobj; void* initrfdwacl; void* initfdwacl; void* rfdwacl; void* fdwacl; void* fdwoptions; void* fdwvalidator; void* fdwhandler; void* rolname; } ;
struct TYPE_20__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ FdwInfo ;
typedef  TYPE_4__ DumpOptions ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  DO_FDW ; 
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

FdwInfo *
FUNC15(Archive *fout, int *numForeignDataWrappers)
{
	DumpOptions *dopt = fout->dopt;
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	FdwInfo    *fdwinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_fdwname;
	int			i_rolname;
	int			i_fdwhandler;
	int			i_fdwvalidator;
	int			i_fdwacl;
	int			i_rfdwacl;
	int			i_initfdwacl;
	int			i_initrfdwacl;
	int			i_fdwoptions;

	/* Before 8.4, there are no foreign-data wrappers */
	if (fout->remoteVersion < 80400)
	{
		*numForeignDataWrappers = 0;
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
						initracl_subquery, "f.fdwacl", "f.fdwowner", "'F'",
						dopt->binary_upgrade);

		FUNC7(query, "SELECT f.tableoid, f.oid, f.fdwname, "
						  "(%s f.fdwowner) AS rolname, "
						  "f.fdwhandler::pg_catalog.regproc, "
						  "f.fdwvalidator::pg_catalog.regproc, "
						  "%s AS fdwacl, "
						  "%s AS rfdwacl, "
						  "%s AS initfdwacl, "
						  "%s AS initrfdwacl, "
						  "array_to_string(ARRAY("
						  "SELECT quote_ident(option_name) || ' ' || "
						  "quote_literal(option_value) "
						  "FROM pg_options_to_table(f.fdwoptions) "
						  "ORDER BY option_name"
						  "), E',\n    ') AS fdwoptions "
						  "FROM pg_foreign_data_wrapper f "
						  "LEFT JOIN pg_init_privs pip ON "
						  "(f.oid = pip.objoid "
						  "AND pip.classoid = 'pg_foreign_data_wrapper'::regclass "
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
	else if (fout->remoteVersion >= 90100)
	{
		FUNC7(query, "SELECT tableoid, oid, fdwname, "
						  "(%s fdwowner) AS rolname, "
						  "fdwhandler::pg_catalog.regproc, "
						  "fdwvalidator::pg_catalog.regproc, fdwacl, "
						  "NULL as rfdwacl, "
						  "NULL as initfdwacl, NULL AS initrfdwacl, "
						  "array_to_string(ARRAY("
						  "SELECT quote_ident(option_name) || ' ' || "
						  "quote_literal(option_value) "
						  "FROM pg_options_to_table(fdwoptions) "
						  "ORDER BY option_name"
						  "), E',\n    ') AS fdwoptions "
						  "FROM pg_foreign_data_wrapper",
						  username_subquery);
	}
	else
	{
		FUNC7(query, "SELECT tableoid, oid, fdwname, "
						  "(%s fdwowner) AS rolname, "
						  "'-' AS fdwhandler, "
						  "fdwvalidator::pg_catalog.regproc, fdwacl, "
						  "NULL as rfdwacl, "
						  "NULL as initfdwacl, NULL AS initrfdwacl, "
						  "array_to_string(ARRAY("
						  "SELECT quote_ident(option_name) || ' ' || "
						  "quote_literal(option_value) "
						  "FROM pg_options_to_table(fdwoptions) "
						  "ORDER BY option_name"
						  "), E',\n    ') AS fdwoptions "
						  "FROM pg_foreign_data_wrapper",
						  username_subquery);
	}

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC6(res);
	*numForeignDataWrappers = ntups;

	fdwinfo = (FdwInfo *) FUNC12(ntups * sizeof(FdwInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_fdwname = FUNC3(res, "fdwname");
	i_rolname = FUNC3(res, "rolname");
	i_fdwhandler = FUNC3(res, "fdwhandler");
	i_fdwvalidator = FUNC3(res, "fdwvalidator");
	i_fdwacl = FUNC3(res, "fdwacl");
	i_rfdwacl = FUNC3(res, "rfdwacl");
	i_initfdwacl = FUNC3(res, "initfdwacl");
	i_initrfdwacl = FUNC3(res, "initrfdwacl");
	i_fdwoptions = FUNC3(res, "fdwoptions");

	for (i = 0; i < ntups; i++)
	{
		fdwinfo[i].dobj.objType = DO_FDW;
		fdwinfo[i].dobj.catId.tableoid = FUNC8(FUNC5(res, i, i_tableoid));
		fdwinfo[i].dobj.catId.oid = FUNC8(FUNC5(res, i, i_oid));
		FUNC0(&fdwinfo[i].dobj);
		fdwinfo[i].dobj.name = FUNC13(FUNC5(res, i, i_fdwname));
		fdwinfo[i].dobj.namespace = NULL;
		fdwinfo[i].rolname = FUNC13(FUNC5(res, i, i_rolname));
		fdwinfo[i].fdwhandler = FUNC13(FUNC5(res, i, i_fdwhandler));
		fdwinfo[i].fdwvalidator = FUNC13(FUNC5(res, i, i_fdwvalidator));
		fdwinfo[i].fdwoptions = FUNC13(FUNC5(res, i, i_fdwoptions));
		fdwinfo[i].fdwacl = FUNC13(FUNC5(res, i, i_fdwacl));
		fdwinfo[i].rfdwacl = FUNC13(FUNC5(res, i, i_rfdwacl));
		fdwinfo[i].initfdwacl = FUNC13(FUNC5(res, i, i_initfdwacl));
		fdwinfo[i].initrfdwacl = FUNC13(FUNC5(res, i, i_initrfdwacl));

		/* Decide whether we want to dump it */
		FUNC14(&(fdwinfo[i].dobj), fout);

		/* Do not try to dump ACL if no ACL exists. */
		if (FUNC4(res, i, i_fdwacl) && FUNC4(res, i, i_rfdwacl) &&
			FUNC4(res, i, i_initfdwacl) &&
			FUNC4(res, i, i_initrfdwacl))
			fdwinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC11(query);

	return fdwinfo;
}