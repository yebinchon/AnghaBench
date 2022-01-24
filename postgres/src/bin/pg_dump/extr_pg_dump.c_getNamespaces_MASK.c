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
struct TYPE_25__ {int remoteVersion; TYPE_4__* dopt; } ;
struct TYPE_24__ {int /*<<< orphan*/  binary_upgrade; } ;
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_20__ {void* name; int /*<<< orphan*/  dump; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_23__ {TYPE_19__ dobj; void* rolname; void* initrnspacl; void* initnspacl; void* rnspacl; void* nspacl; } ;
struct TYPE_22__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ NamespaceInfo ;
typedef  TYPE_4__ DumpOptions ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_19__*) ; 
 int /*<<< orphan*/  DO_NAMESPACE ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,void*) ; 
 scalar_t__ FUNC14 (int) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_5__*) ; 
 scalar_t__ FUNC17 (void*) ; 
 int /*<<< orphan*/  username_subquery ; 

NamespaceInfo *
FUNC18(Archive *fout, int *numNamespaces)
{
	DumpOptions *dopt = fout->dopt;
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	NamespaceInfo *nsinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_nspname;
	int			i_rolname;
	int			i_nspacl;
	int			i_rnspacl;
	int			i_initnspacl;
	int			i_initrnspacl;

	query = FUNC11();

	/*
	 * we fetch all namespaces including system ones, so that every object we
	 * read in can be linked to a containing namespace.
	 */
	if (fout->remoteVersion >= 90600)
	{
		PQExpBuffer acl_subquery = FUNC11();
		PQExpBuffer racl_subquery = FUNC11();
		PQExpBuffer init_acl_subquery = FUNC11();
		PQExpBuffer init_racl_subquery = FUNC11();

		FUNC10(acl_subquery, racl_subquery, init_acl_subquery,
						init_racl_subquery, "n.nspacl", "n.nspowner", "'n'",
						dopt->binary_upgrade);

		FUNC7(query, "SELECT n.tableoid, n.oid, n.nspname, "
						  "(%s nspowner) AS rolname, "
						  "%s as nspacl, "
						  "%s as rnspacl, "
						  "%s as initnspacl, "
						  "%s as initrnspacl "
						  "FROM pg_namespace n "
						  "LEFT JOIN pg_init_privs pip "
						  "ON (n.oid = pip.objoid "
						  "AND pip.classoid = 'pg_namespace'::regclass "
						  "AND pip.objsubid = 0",
						  username_subquery,
						  acl_subquery->data,
						  racl_subquery->data,
						  init_acl_subquery->data,
						  init_racl_subquery->data);

		FUNC8(query, ") ");

		FUNC12(acl_subquery);
		FUNC12(racl_subquery);
		FUNC12(init_acl_subquery);
		FUNC12(init_racl_subquery);
	}
	else
		FUNC7(query, "SELECT tableoid, oid, nspname, "
						  "(%s nspowner) AS rolname, "
						  "nspacl, NULL as rnspacl, "
						  "NULL AS initnspacl, NULL as initrnspacl "
						  "FROM pg_namespace",
						  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC6(res);

	nsinfo = (NamespaceInfo *) FUNC14(ntups * sizeof(NamespaceInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_nspname = FUNC3(res, "nspname");
	i_rolname = FUNC3(res, "rolname");
	i_nspacl = FUNC3(res, "nspacl");
	i_rnspacl = FUNC3(res, "rnspacl");
	i_initnspacl = FUNC3(res, "initnspacl");
	i_initrnspacl = FUNC3(res, "initrnspacl");

	for (i = 0; i < ntups; i++)
	{
		nsinfo[i].dobj.objType = DO_NAMESPACE;
		nsinfo[i].dobj.catId.tableoid = FUNC9(FUNC5(res, i, i_tableoid));
		nsinfo[i].dobj.catId.oid = FUNC9(FUNC5(res, i, i_oid));
		FUNC0(&nsinfo[i].dobj);
		nsinfo[i].dobj.name = FUNC15(FUNC5(res, i, i_nspname));
		nsinfo[i].rolname = FUNC15(FUNC5(res, i, i_rolname));
		nsinfo[i].nspacl = FUNC15(FUNC5(res, i, i_nspacl));
		nsinfo[i].rnspacl = FUNC15(FUNC5(res, i, i_rnspacl));
		nsinfo[i].initnspacl = FUNC15(FUNC5(res, i, i_initnspacl));
		nsinfo[i].initrnspacl = FUNC15(FUNC5(res, i, i_initrnspacl));

		/* Decide whether to dump this namespace */
		FUNC16(&nsinfo[i], fout);

		/*
		 * Do not try to dump ACL if the ACL is empty or the default.
		 *
		 * This is useful because, for some schemas/objects, the only
		 * component we are going to try and dump is the ACL and if we can
		 * remove that then 'dump' goes to zero/false and we don't consider
		 * this object for dumping at all later on.
		 */
		if (FUNC4(res, i, i_nspacl) && FUNC4(res, i, i_rnspacl) &&
			FUNC4(res, i, i_initnspacl) &&
			FUNC4(res, i, i_initrnspacl))
			nsinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

		if (FUNC17(nsinfo[i].rolname) == 0)
			FUNC13("owner of schema \"%s\" appears to be invalid",
						   nsinfo[i].dobj.name);
	}

	FUNC2(res);
	FUNC12(query);

	*numNamespaces = ntups;

	return nsinfo;
}