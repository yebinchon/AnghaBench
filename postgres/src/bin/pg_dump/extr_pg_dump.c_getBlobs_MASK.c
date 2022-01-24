#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  tableoid; } ;
struct TYPE_22__ {int remoteVersion; TYPE_3__* dopt; } ;
struct TYPE_19__ {void* name; TYPE_6__ catId; int /*<<< orphan*/  objType; int /*<<< orphan*/  dump; } ;
struct TYPE_21__ {TYPE_2__ dobj; void* initrblobacl; void* initblobacl; void* rblobacl; void* blobacl; void* rolname; } ;
struct TYPE_20__ {scalar_t__ binary_upgrade; } ;
struct TYPE_18__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_2__ DumpableObject ;
typedef  TYPE_3__ DumpOptions ;
typedef  TYPE_4__ BlobInfo ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DO_BLOB ; 
 int /*<<< orphan*/  DO_BLOB_DATA ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/  DUMP_COMPONENT_DATA ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LargeObjectRelationId ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,char*,char*,char*,scalar_t__) ; 
 TYPE_1__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_6__ nilCatalogId ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int) ; 
 void* FUNC15 (char*) ; 
 int /*<<< orphan*/  username_subquery ; 

__attribute__((used)) static void
FUNC16(Archive *fout)
{
	DumpOptions *dopt = fout->dopt;
	PQExpBuffer blobQry = FUNC11();
	BlobInfo   *binfo;
	DumpableObject *bdata;
	PGresult   *res;
	int			ntups;
	int			i;
	int			i_oid;
	int			i_lomowner;
	int			i_lomacl;
	int			i_rlomacl;
	int			i_initlomacl;
	int			i_initrlomacl;

	FUNC13("reading large objects");

	/* Fetch BLOB OIDs, and owner/ACL data if >= 9.0 */
	if (fout->remoteVersion >= 90600)
	{
		PQExpBuffer acl_subquery = FUNC11();
		PQExpBuffer racl_subquery = FUNC11();
		PQExpBuffer init_acl_subquery = FUNC11();
		PQExpBuffer init_racl_subquery = FUNC11();

		FUNC10(acl_subquery, racl_subquery, init_acl_subquery,
						init_racl_subquery, "l.lomacl", "l.lomowner", "'L'",
						dopt->binary_upgrade);

		FUNC7(blobQry,
						  "SELECT l.oid, (%s l.lomowner) AS rolname, "
						  "%s AS lomacl, "
						  "%s AS rlomacl, "
						  "%s AS initlomacl, "
						  "%s AS initrlomacl "
						  "FROM pg_largeobject_metadata l "
						  "LEFT JOIN pg_init_privs pip ON "
						  "(l.oid = pip.objoid "
						  "AND pip.classoid = 'pg_largeobject'::regclass "
						  "AND pip.objsubid = 0) ",
						  username_subquery,
						  acl_subquery->data,
						  racl_subquery->data,
						  init_acl_subquery->data,
						  init_racl_subquery->data);

		FUNC12(acl_subquery);
		FUNC12(racl_subquery);
		FUNC12(init_acl_subquery);
		FUNC12(init_racl_subquery);
	}
	else if (fout->remoteVersion >= 90000)
		FUNC7(blobQry,
						  "SELECT oid, (%s lomowner) AS rolname, lomacl, "
						  "NULL AS rlomacl, NULL AS initlomacl, "
						  "NULL AS initrlomacl "
						  " FROM pg_largeobject_metadata",
						  username_subquery);
	else
		FUNC8(blobQry,
							 "SELECT DISTINCT loid AS oid, "
							 "NULL::name AS rolname, NULL::oid AS lomacl, "
							 "NULL::oid AS rlomacl, NULL::oid AS initlomacl, "
							 "NULL::oid AS initrlomacl "
							 " FROM pg_largeobject");

	res = FUNC1(fout, blobQry->data, PGRES_TUPLES_OK);

	i_oid = FUNC3(res, "oid");
	i_lomowner = FUNC3(res, "rolname");
	i_lomacl = FUNC3(res, "lomacl");
	i_rlomacl = FUNC3(res, "rlomacl");
	i_initlomacl = FUNC3(res, "initlomacl");
	i_initrlomacl = FUNC3(res, "initrlomacl");

	ntups = FUNC6(res);

	/*
	 * Each large object has its own BLOB archive entry.
	 */
	binfo = (BlobInfo *) FUNC14(ntups * sizeof(BlobInfo));

	for (i = 0; i < ntups; i++)
	{
		binfo[i].dobj.objType = DO_BLOB;
		binfo[i].dobj.catId.tableoid = LargeObjectRelationId;
		binfo[i].dobj.catId.oid = FUNC9(FUNC5(res, i, i_oid));
		FUNC0(&binfo[i].dobj);

		binfo[i].dobj.name = FUNC15(FUNC5(res, i, i_oid));
		binfo[i].rolname = FUNC15(FUNC5(res, i, i_lomowner));
		binfo[i].blobacl = FUNC15(FUNC5(res, i, i_lomacl));
		binfo[i].rblobacl = FUNC15(FUNC5(res, i, i_rlomacl));
		binfo[i].initblobacl = FUNC15(FUNC5(res, i, i_initlomacl));
		binfo[i].initrblobacl = FUNC15(FUNC5(res, i, i_initrlomacl));

		if (FUNC4(res, i, i_lomacl) &&
			FUNC4(res, i, i_rlomacl) &&
			FUNC4(res, i, i_initlomacl) &&
			FUNC4(res, i, i_initrlomacl))
			binfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

		/*
		 * In binary-upgrade mode for blobs, we do *not* dump out the blob
		 * data, as it will be copied by pg_upgrade, which simply copies the
		 * pg_largeobject table. We *do* however dump out anything but the
		 * data, as pg_upgrade copies just pg_largeobject, but not
		 * pg_largeobject_metadata, after the dump is restored.
		 */
		if (dopt->binary_upgrade)
			binfo[i].dobj.dump &= ~DUMP_COMPONENT_DATA;
	}

	/*
	 * If we have any large objects, a "BLOBS" archive entry is needed. This
	 * is just a placeholder for sorting; it carries no data now.
	 */
	if (ntups > 0)
	{
		bdata = (DumpableObject *) FUNC14(sizeof(DumpableObject));
		bdata->objType = DO_BLOB_DATA;
		bdata->catId = nilCatalogId;
		FUNC0(bdata);
		bdata->name = FUNC15("BLOBS");
	}

	FUNC2(res);
	FUNC12(blobQry);
}