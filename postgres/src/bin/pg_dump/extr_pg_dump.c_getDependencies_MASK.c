#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {scalar_t__ tableoid; scalar_t__ oid; } ;
struct TYPE_14__ {scalar_t__ tableoid; scalar_t__ oid; } ;
struct TYPE_16__ {scalar_t__ objType; int /*<<< orphan*/  dumpId; TYPE_1__ catId; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ DumpableObject ;
typedef  TYPE_4__ CatalogId ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
 scalar_t__ DO_TABLE ; 
 scalar_t__ DO_TYPE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 void* FUNC7 (char*) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_3__* FUNC10 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC13(Archive *fout)
{
	PQExpBuffer query;
	PGresult   *res;
	int			ntups,
				i;
	int			i_classid,
				i_objid,
				i_refclassid,
				i_refobjid,
				i_deptype;
	DumpableObject *dobj,
			   *refdobj;

	FUNC11("reading dependency data");

	query = FUNC8();

	/*
	 * Messy query to collect the dependency data we need.  Note that we
	 * ignore the sub-object column, so that dependencies of or on a column
	 * look the same as dependencies of or on a whole table.
	 *
	 * PIN dependencies aren't interesting, and EXTENSION dependencies were
	 * already processed by getExtensionMembership.
	 */
	FUNC6(query, "SELECT "
						 "classid, objid, refclassid, refobjid, deptype "
						 "FROM pg_depend "
						 "WHERE deptype != 'p' AND deptype != 'e'\n");

	/*
	 * Since we don't treat pg_amop entries as separate DumpableObjects, we
	 * have to translate their dependencies into dependencies of their parent
	 * opfamily.  Ignore internal dependencies though, as those will point to
	 * their parent opclass, which we needn't consider here (and if we did,
	 * it'd just result in circular dependencies).  Also, "loose" opfamily
	 * entries will have dependencies on their parent opfamily, which we
	 * should drop since they'd likewise become useless self-dependencies.
	 * (But be sure to keep deps on *other* opfamilies; see amopsortfamily.)
	 *
	 * Skip this for pre-8.3 source servers: pg_opfamily doesn't exist there,
	 * and the (known) cases where it would matter to have these dependencies
	 * can't arise anyway.
	 */
	if (fout->remoteVersion >= 80300)
	{
		FUNC6(query, "UNION ALL\n"
							 "SELECT 'pg_opfamily'::regclass AS classid, amopfamily AS objid, refclassid, refobjid, deptype "
							 "FROM pg_depend d, pg_amop o "
							 "WHERE deptype NOT IN ('p', 'e', 'i') AND "
							 "classid = 'pg_amop'::regclass AND objid = o.oid "
							 "AND NOT (refclassid = 'pg_opfamily'::regclass AND amopfamily = refobjid)\n");

		/* Likewise for pg_amproc entries */
		FUNC6(query, "UNION ALL\n"
							 "SELECT 'pg_opfamily'::regclass AS classid, amprocfamily AS objid, refclassid, refobjid, deptype "
							 "FROM pg_depend d, pg_amproc p "
							 "WHERE deptype NOT IN ('p', 'e', 'i') AND "
							 "classid = 'pg_amproc'::regclass AND objid = p.oid "
							 "AND NOT (refclassid = 'pg_opfamily'::regclass AND amprocfamily = refobjid)\n");
	}

	/* Sort the output for efficiency below */
	FUNC6(query, "ORDER BY 1,2");

	res = FUNC0(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC4(res);

	i_classid = FUNC2(res, "classid");
	i_objid = FUNC2(res, "objid");
	i_refclassid = FUNC2(res, "refclassid");
	i_refobjid = FUNC2(res, "refobjid");
	i_deptype = FUNC2(res, "deptype");

	/*
	 * Since we ordered the SELECT by referencing ID, we can expect that
	 * multiple entries for the same object will appear together; this saves
	 * on searches.
	 */
	dobj = NULL;

	for (i = 0; i < ntups; i++)
	{
		CatalogId	objId;
		CatalogId	refobjId;
		char		deptype;

		objId.tableoid = FUNC7(FUNC3(res, i, i_classid));
		objId.oid = FUNC7(FUNC3(res, i, i_objid));
		refobjId.tableoid = FUNC7(FUNC3(res, i, i_refclassid));
		refobjId.oid = FUNC7(FUNC3(res, i, i_refobjid));
		deptype = *(FUNC3(res, i, i_deptype));

		if (dobj == NULL ||
			dobj->catId.tableoid != objId.tableoid ||
			dobj->catId.oid != objId.oid)
			dobj = FUNC10(objId);

		/*
		 * Failure to find objects mentioned in pg_depend is not unexpected,
		 * since for example we don't collect info about TOAST tables.
		 */
		if (dobj == NULL)
		{
#ifdef NOT_USED
			pg_log_warning("no referencing object %u %u",
						   objId.tableoid, objId.oid);
#endif
			continue;
		}

		refdobj = FUNC10(refobjId);

		if (refdobj == NULL)
		{
#ifdef NOT_USED
			pg_log_warning("no referenced object %u %u",
						   refobjId.tableoid, refobjId.oid);
#endif
			continue;
		}

		/*
		 * Ordinarily, table rowtypes have implicit dependencies on their
		 * tables.  However, for a composite type the implicit dependency goes
		 * the other way in pg_depend; which is the right thing for DROP but
		 * it doesn't produce the dependency ordering we need. So in that one
		 * case, we reverse the direction of the dependency.
		 */
		if (deptype == 'i' &&
			dobj->objType == DO_TABLE &&
			refdobj->objType == DO_TYPE)
			FUNC5(refdobj, dobj->dumpId);
		else
			/* normal case */
			FUNC5(dobj, refdobj->dumpId);
	}

	FUNC1(res);

	FUNC9(query);
}