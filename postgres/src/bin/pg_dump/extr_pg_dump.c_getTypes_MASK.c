#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_22__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_29__ {void* oid; void* tableoid; } ;
struct TYPE_24__ {void** name; int dump; int /*<<< orphan*/  namespace; TYPE_8__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_23__ {scalar_t__ typtype; int isDefined; int isArray; TYPE_22__ dobj; void* rolname; TYPE_2__* shellType; int /*<<< orphan*/ * domChecks; scalar_t__ nDomChecks; void* typrelkind; void* typrelid; void* typelem; void* initrtypacl; void* inittypacl; void* rtypacl; void* typacl; } ;
typedef  TYPE_1__ TypeInfo ;
struct TYPE_28__ {int remoteVersion; TYPE_4__* dopt; } ;
struct TYPE_27__ {int /*<<< orphan*/  binary_upgrade; } ;
struct TYPE_26__ {int /*<<< orphan*/  data; } ;
struct TYPE_25__ {TYPE_22__ dobj; TYPE_1__* baseType; } ;
typedef  TYPE_2__ ShellTypeInfo ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ DumpOptions ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_22__*) ; 
 int /*<<< orphan*/  DO_SHELL_TYPE ; 
 int /*<<< orphan*/  DO_TYPE ; 
 int DUMP_COMPONENT_ACL ; 
 int DUMP_COMPONENT_DEFINITION ; 
 int DUMP_COMPONENT_NONE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 void** FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ TYPTYPE_BASE ; 
 scalar_t__ TYPTYPE_DOMAIN ; 
 scalar_t__ TYPTYPE_RANGE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ,...) ; 
 void* FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_1__*) ; 
 TYPE_8__ nilCatalogId ; 
 int /*<<< orphan*/  FUNC14 (char*,void**) ; 
 scalar_t__ FUNC15 (int) ; 
 void* FUNC16 (void**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,TYPE_5__*) ; 
 scalar_t__ FUNC18 (void**,char*) ; 
 scalar_t__ FUNC19 (void*) ; 
 int /*<<< orphan*/  username_subquery ; 

TypeInfo *
FUNC20(Archive *fout, int *numTypes)
{
	DumpOptions *dopt = fout->dopt;
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query = FUNC10();
	TypeInfo   *tyinfo;
	ShellTypeInfo *stinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_typname;
	int			i_typnamespace;
	int			i_typacl;
	int			i_rtypacl;
	int			i_inittypacl;
	int			i_initrtypacl;
	int			i_rolname;
	int			i_typelem;
	int			i_typrelid;
	int			i_typrelkind;
	int			i_typtype;
	int			i_typisdefined;
	int			i_isarray;

	/*
	 * we include even the built-in types because those may be used as array
	 * elements by user-defined types
	 *
	 * we filter out the built-in types when we dump out the types
	 *
	 * same approach for undefined (shell) types and array types
	 *
	 * Note: as of 8.3 we can reliably detect whether a type is an
	 * auto-generated array type by checking the element type's typarray.
	 * (Before that the test is capable of generating false positives.) We
	 * still check for name beginning with '_', though, so as to avoid the
	 * cost of the subselect probe for all standard types.  This would have to
	 * be revisited if the backend ever allows renaming of array types.
	 */

	if (fout->remoteVersion >= 90600)
	{
		PQExpBuffer acl_subquery = FUNC10();
		PQExpBuffer racl_subquery = FUNC10();
		PQExpBuffer initacl_subquery = FUNC10();
		PQExpBuffer initracl_subquery = FUNC10();

		FUNC9(acl_subquery, racl_subquery, initacl_subquery,
						initracl_subquery, "t.typacl", "t.typowner", "'T'",
						dopt->binary_upgrade);

		FUNC7(query, "SELECT t.tableoid, t.oid, t.typname, "
						  "t.typnamespace, "
						  "%s AS typacl, "
						  "%s AS rtypacl, "
						  "%s AS inittypacl, "
						  "%s AS initrtypacl, "
						  "(%s t.typowner) AS rolname, "
						  "t.typelem, t.typrelid, "
						  "CASE WHEN t.typrelid = 0 THEN ' '::\"char\" "
						  "ELSE (SELECT relkind FROM pg_class WHERE oid = t.typrelid) END AS typrelkind, "
						  "t.typtype, t.typisdefined, "
						  "t.typname[0] = '_' AND t.typelem != 0 AND "
						  "(SELECT typarray FROM pg_type te WHERE oid = t.typelem) = t.oid AS isarray "
						  "FROM pg_type t "
						  "LEFT JOIN pg_init_privs pip ON "
						  "(t.oid = pip.objoid "
						  "AND pip.classoid = 'pg_type'::regclass "
						  "AND pip.objsubid = 0) ",
						  acl_subquery->data,
						  racl_subquery->data,
						  initacl_subquery->data,
						  initracl_subquery->data,
						  username_subquery);

		FUNC11(acl_subquery);
		FUNC11(racl_subquery);
		FUNC11(initacl_subquery);
		FUNC11(initracl_subquery);
	}
	else if (fout->remoteVersion >= 90200)
	{
		FUNC7(query, "SELECT tableoid, oid, typname, "
						  "typnamespace, typacl, NULL as rtypacl, "
						  "NULL AS inittypacl, NULL AS initrtypacl, "
						  "(%s typowner) AS rolname, "
						  "typelem, typrelid, "
						  "CASE WHEN typrelid = 0 THEN ' '::\"char\" "
						  "ELSE (SELECT relkind FROM pg_class WHERE oid = typrelid) END AS typrelkind, "
						  "typtype, typisdefined, "
						  "typname[0] = '_' AND typelem != 0 AND "
						  "(SELECT typarray FROM pg_type te WHERE oid = pg_type.typelem) = oid AS isarray "
						  "FROM pg_type",
						  username_subquery);
	}
	else if (fout->remoteVersion >= 80300)
	{
		FUNC7(query, "SELECT tableoid, oid, typname, "
						  "typnamespace, NULL AS typacl, NULL as rtypacl, "
						  "NULL AS inittypacl, NULL AS initrtypacl, "
						  "(%s typowner) AS rolname, "
						  "typelem, typrelid, "
						  "CASE WHEN typrelid = 0 THEN ' '::\"char\" "
						  "ELSE (SELECT relkind FROM pg_class WHERE oid = typrelid) END AS typrelkind, "
						  "typtype, typisdefined, "
						  "typname[0] = '_' AND typelem != 0 AND "
						  "(SELECT typarray FROM pg_type te WHERE oid = pg_type.typelem) = oid AS isarray "
						  "FROM pg_type",
						  username_subquery);
	}
	else
	{
		FUNC7(query, "SELECT tableoid, oid, typname, "
						  "typnamespace, NULL AS typacl, NULL as rtypacl, "
						  "NULL AS inittypacl, NULL AS initrtypacl, "
						  "(%s typowner) AS rolname, "
						  "typelem, typrelid, "
						  "CASE WHEN typrelid = 0 THEN ' '::\"char\" "
						  "ELSE (SELECT relkind FROM pg_class WHERE oid = typrelid) END AS typrelkind, "
						  "typtype, typisdefined, "
						  "typname[0] = '_' AND typelem != 0 AS isarray "
						  "FROM pg_type",
						  username_subquery);
	}

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC6(res);

	tyinfo = (TypeInfo *) FUNC15(ntups * sizeof(TypeInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_typname = FUNC3(res, "typname");
	i_typnamespace = FUNC3(res, "typnamespace");
	i_typacl = FUNC3(res, "typacl");
	i_rtypacl = FUNC3(res, "rtypacl");
	i_inittypacl = FUNC3(res, "inittypacl");
	i_initrtypacl = FUNC3(res, "initrtypacl");
	i_rolname = FUNC3(res, "rolname");
	i_typelem = FUNC3(res, "typelem");
	i_typrelid = FUNC3(res, "typrelid");
	i_typrelkind = FUNC3(res, "typrelkind");
	i_typtype = FUNC3(res, "typtype");
	i_typisdefined = FUNC3(res, "typisdefined");
	i_isarray = FUNC3(res, "isarray");

	for (i = 0; i < ntups; i++)
	{
		tyinfo[i].dobj.objType = DO_TYPE;
		tyinfo[i].dobj.catId.tableoid = FUNC8(FUNC5(res, i, i_tableoid));
		tyinfo[i].dobj.catId.oid = FUNC8(FUNC5(res, i, i_oid));
		FUNC0(&tyinfo[i].dobj);
		tyinfo[i].dobj.name = FUNC16(FUNC5(res, i, i_typname));
		tyinfo[i].dobj.namespace =
			FUNC12(fout,
						  FUNC8(FUNC5(res, i, i_typnamespace)));
		tyinfo[i].rolname = FUNC16(FUNC5(res, i, i_rolname));
		tyinfo[i].typacl = FUNC16(FUNC5(res, i, i_typacl));
		tyinfo[i].rtypacl = FUNC16(FUNC5(res, i, i_rtypacl));
		tyinfo[i].inittypacl = FUNC16(FUNC5(res, i, i_inittypacl));
		tyinfo[i].initrtypacl = FUNC16(FUNC5(res, i, i_initrtypacl));
		tyinfo[i].typelem = FUNC8(FUNC5(res, i, i_typelem));
		tyinfo[i].typrelid = FUNC8(FUNC5(res, i, i_typrelid));
		tyinfo[i].typrelkind = *FUNC5(res, i, i_typrelkind);
		tyinfo[i].typtype = *FUNC5(res, i, i_typtype);
		tyinfo[i].shellType = NULL;

		if (FUNC18(FUNC5(res, i, i_typisdefined), "t") == 0)
			tyinfo[i].isDefined = true;
		else
			tyinfo[i].isDefined = false;

		if (FUNC18(FUNC5(res, i, i_isarray), "t") == 0)
			tyinfo[i].isArray = true;
		else
			tyinfo[i].isArray = false;

		/* Decide whether we want to dump it */
		FUNC17(&tyinfo[i], fout);

		/* Do not try to dump ACL if no ACL exists. */
		if (FUNC4(res, i, i_typacl) && FUNC4(res, i, i_rtypacl) &&
			FUNC4(res, i, i_inittypacl) &&
			FUNC4(res, i, i_initrtypacl))
			tyinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

		/*
		 * If it's a domain, fetch info about its constraints, if any
		 */
		tyinfo[i].nDomChecks = 0;
		tyinfo[i].domChecks = NULL;
		if ((tyinfo[i].dobj.dump & DUMP_COMPONENT_DEFINITION) &&
			tyinfo[i].typtype == TYPTYPE_DOMAIN)
			FUNC13(fout, &(tyinfo[i]));

		/*
		 * If it's a base type, make a DumpableObject representing a shell
		 * definition of the type.  We will need to dump that ahead of the I/O
		 * functions for the type.  Similarly, range types need a shell
		 * definition in case they have a canonicalize function.
		 *
		 * Note: the shell type doesn't have a catId.  You might think it
		 * should copy the base type's catId, but then it might capture the
		 * pg_depend entries for the type, which we don't want.
		 */
		if ((tyinfo[i].dobj.dump & DUMP_COMPONENT_DEFINITION) &&
			(tyinfo[i].typtype == TYPTYPE_BASE ||
			 tyinfo[i].typtype == TYPTYPE_RANGE))
		{
			stinfo = (ShellTypeInfo *) FUNC15(sizeof(ShellTypeInfo));
			stinfo->dobj.objType = DO_SHELL_TYPE;
			stinfo->dobj.catId = nilCatalogId;
			FUNC0(&stinfo->dobj);
			stinfo->dobj.name = FUNC16(tyinfo[i].dobj.name);
			stinfo->dobj.namespace = tyinfo[i].dobj.namespace;
			stinfo->baseType = &(tyinfo[i]);
			tyinfo[i].shellType = stinfo;

			/*
			 * Initially mark the shell type as not to be dumped.  We'll only
			 * dump it if the I/O or canonicalize functions need to be dumped;
			 * this is taken care of while sorting dependencies.
			 */
			stinfo->dobj.dump = DUMP_COMPONENT_NONE;
		}

		if (FUNC19(tyinfo[i].rolname) == 0)
			FUNC14("owner of data type \"%s\" appears to be invalid",
						   tyinfo[i].dobj.name);
	}

	*numTypes = ntups;

	FUNC2(res);

	FUNC11(query);

	return tyinfo;
}