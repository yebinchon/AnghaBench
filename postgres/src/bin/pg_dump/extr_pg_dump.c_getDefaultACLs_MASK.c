#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_19__ ;

/* Type definitions */
struct TYPE_25__ {int remoteVersion; TYPE_3__* dopt; } ;
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_20__ {int /*<<< orphan*/ * namespace; void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_24__ {void* initrdefaclacl; void* initdefaclacl; void* rdefaclacl; void* defaclacl; int /*<<< orphan*/  defaclobjtype; void* defaclrole; TYPE_19__ dobj; } ;
struct TYPE_23__ {int /*<<< orphan*/  binary_upgrade; } ;
struct TYPE_22__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  scalar_t__ Oid ;
typedef  TYPE_3__ DumpOptions ;
typedef  TYPE_4__ DefaultACLInfo ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_19__*) ; 
 int /*<<< orphan*/  DO_DEFAULT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 
 void* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  username_subquery ; 

DefaultACLInfo *
FUNC15(Archive *fout, int *numDefaultACLs)
{
	DumpOptions *dopt = fout->dopt;
	DefaultACLInfo *daclinfo;
	PQExpBuffer query;
	PGresult   *res;
	int			i_oid;
	int			i_tableoid;
	int			i_defaclrole;
	int			i_defaclnamespace;
	int			i_defaclobjtype;
	int			i_defaclacl;
	int			i_rdefaclacl;
	int			i_initdefaclacl;
	int			i_initrdefaclacl;
	int			i,
				ntups;

	if (fout->remoteVersion < 90000)
	{
		*numDefaultACLs = 0;
		return NULL;
	}

	query = FUNC9();

	if (fout->remoteVersion >= 90600)
	{
		PQExpBuffer acl_subquery = FUNC9();
		PQExpBuffer racl_subquery = FUNC9();
		PQExpBuffer initacl_subquery = FUNC9();
		PQExpBuffer initracl_subquery = FUNC9();

		FUNC8(acl_subquery, racl_subquery, initacl_subquery,
						initracl_subquery, "defaclacl", "defaclrole",
						"CASE WHEN defaclobjtype = 'S' THEN 's' ELSE defaclobjtype END::\"char\"",
						dopt->binary_upgrade);

		FUNC6(query, "SELECT d.oid, d.tableoid, "
						  "(%s d.defaclrole) AS defaclrole, "
						  "d.defaclnamespace, "
						  "d.defaclobjtype, "
						  "%s AS defaclacl, "
						  "%s AS rdefaclacl, "
						  "%s AS initdefaclacl, "
						  "%s AS initrdefaclacl "
						  "FROM pg_default_acl d "
						  "LEFT JOIN pg_init_privs pip ON "
						  "(d.oid = pip.objoid "
						  "AND pip.classoid = 'pg_default_acl'::regclass "
						  "AND pip.objsubid = 0) ",
						  username_subquery,
						  acl_subquery->data,
						  racl_subquery->data,
						  initacl_subquery->data,
						  initracl_subquery->data);
	}
	else
	{
		FUNC6(query, "SELECT oid, tableoid, "
						  "(%s defaclrole) AS defaclrole, "
						  "defaclnamespace, "
						  "defaclobjtype, "
						  "defaclacl, "
						  "NULL AS rdefaclacl, "
						  "NULL AS initdefaclacl, "
						  "NULL AS initrdefaclacl "
						  "FROM pg_default_acl",
						  username_subquery);
	}

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numDefaultACLs = ntups;

	daclinfo = (DefaultACLInfo *) FUNC12(ntups * sizeof(DefaultACLInfo));

	i_oid = FUNC3(res, "oid");
	i_tableoid = FUNC3(res, "tableoid");
	i_defaclrole = FUNC3(res, "defaclrole");
	i_defaclnamespace = FUNC3(res, "defaclnamespace");
	i_defaclobjtype = FUNC3(res, "defaclobjtype");
	i_defaclacl = FUNC3(res, "defaclacl");
	i_rdefaclacl = FUNC3(res, "rdefaclacl");
	i_initdefaclacl = FUNC3(res, "initdefaclacl");
	i_initrdefaclacl = FUNC3(res, "initrdefaclacl");

	for (i = 0; i < ntups; i++)
	{
		Oid			nspid = FUNC7(FUNC4(res, i, i_defaclnamespace));

		daclinfo[i].dobj.objType = DO_DEFAULT_ACL;
		daclinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		daclinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&daclinfo[i].dobj);
		/* cheesy ... is it worth coming up with a better object name? */
		daclinfo[i].dobj.name = FUNC13(FUNC4(res, i, i_defaclobjtype));

		if (nspid != InvalidOid)
			daclinfo[i].dobj.namespace = FUNC11(fout, nspid);
		else
			daclinfo[i].dobj.namespace = NULL;

		daclinfo[i].defaclrole = FUNC13(FUNC4(res, i, i_defaclrole));
		daclinfo[i].defaclobjtype = *(FUNC4(res, i, i_defaclobjtype));
		daclinfo[i].defaclacl = FUNC13(FUNC4(res, i, i_defaclacl));
		daclinfo[i].rdefaclacl = FUNC13(FUNC4(res, i, i_rdefaclacl));
		daclinfo[i].initdefaclacl = FUNC13(FUNC4(res, i, i_initdefaclacl));
		daclinfo[i].initrdefaclacl = FUNC13(FUNC4(res, i, i_initrdefaclacl));

		/* Decide whether we want to dump it */
		FUNC14(&(daclinfo[i]), dopt);
	}

	FUNC2(res);

	FUNC10(query);

	return daclinfo;
}