#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_18__ {void* name; TYPE_4__* namespace; TYPE_3__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_24__ {char tgenabled; int tgisconstraint; int tgdeferrable; int tginitdeferred; int /*<<< orphan*/ * tgconstrrelname; void* tgconstrrelid; int /*<<< orphan*/ * tgconstrname; TYPE_17__ dobj; int /*<<< orphan*/ * tgargs; void* tgnargs; void* tgtype; int /*<<< orphan*/ * tgfname; int /*<<< orphan*/ * tgdef; TYPE_7__* tgtable; } ;
typedef  TYPE_6__ TriggerInfo ;
struct TYPE_20__ {int /*<<< orphan*/  oid; } ;
struct TYPE_23__ {int dump; int /*<<< orphan*/  name; TYPE_4__* namespace; TYPE_2__ catId; } ;
struct TYPE_25__ {int numTriggers; TYPE_5__ dobj; TYPE_6__* triggers; int /*<<< orphan*/  hastriggers; } ;
typedef  TYPE_7__ TableInfo ;
struct TYPE_27__ {int remoteVersion; } ;
struct TYPE_26__ {int /*<<< orphan*/  data; } ;
struct TYPE_19__ {int /*<<< orphan*/  name; } ;
struct TYPE_22__ {TYPE_1__ dobj; } ;
typedef  TYPE_8__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_9__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_17__*) ; 
 int /*<<< orphan*/  DO_TRIGGER ; 
 int DUMP_COMPONENT_DEFINITION ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* InvalidOid ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (char*) ; 
 void* FUNC10 (char*) ; 
 TYPE_8__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 
 void* FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*) ; 

void
FUNC18(Archive *fout, TableInfo tblinfo[], int numTables)
{
	int			i,
				j;
	PQExpBuffer query = FUNC11();
	PGresult   *res;
	TriggerInfo *tginfo;
	int			i_tableoid,
				i_oid,
				i_tgname,
				i_tgfname,
				i_tgtype,
				i_tgnargs,
				i_tgargs,
				i_tgisconstraint,
				i_tgconstrname,
				i_tgconstrrelid,
				i_tgconstrrelname,
				i_tgenabled,
				i_tgdeferrable,
				i_tginitdeferred,
				i_tgdef;
	int			ntups;

	for (i = 0; i < numTables; i++)
	{
		TableInfo  *tbinfo = &tblinfo[i];

		if (!tbinfo->hastriggers ||
			!(tbinfo->dobj.dump & DUMP_COMPONENT_DEFINITION))
			continue;

		FUNC14("reading triggers for table \"%s.%s\"",
					tbinfo->dobj.namespace->dobj.name,
					tbinfo->dobj.name);

		FUNC17(query);
		if (fout->remoteVersion >= 90000)
		{
			/*
			 * NB: think not to use pretty=true in pg_get_triggerdef.  It
			 * could result in non-forward-compatible dumps of WHEN clauses
			 * due to under-parenthesization.
			 */
			FUNC8(query,
							  "SELECT tgname, "
							  "tgfoid::pg_catalog.regproc AS tgfname, "
							  "pg_catalog.pg_get_triggerdef(oid, false) AS tgdef, "
							  "tgenabled, tableoid, oid "
							  "FROM pg_catalog.pg_trigger t "
							  "WHERE tgrelid = '%u'::pg_catalog.oid "
							  "AND NOT tgisinternal",
							  tbinfo->dobj.catId.oid);
		}
		else if (fout->remoteVersion >= 80300)
		{
			/*
			 * We ignore triggers that are tied to a foreign-key constraint
			 */
			FUNC8(query,
							  "SELECT tgname, "
							  "tgfoid::pg_catalog.regproc AS tgfname, "
							  "tgtype, tgnargs, tgargs, tgenabled, "
							  "tgisconstraint, tgconstrname, tgdeferrable, "
							  "tgconstrrelid, tginitdeferred, tableoid, oid, "
							  "tgconstrrelid::pg_catalog.regclass AS tgconstrrelname "
							  "FROM pg_catalog.pg_trigger t "
							  "WHERE tgrelid = '%u'::pg_catalog.oid "
							  "AND tgconstraint = 0",
							  tbinfo->dobj.catId.oid);
		}
		else
		{
			/*
			 * We ignore triggers that are tied to a foreign-key constraint,
			 * but in these versions we have to grovel through pg_constraint
			 * to find out
			 */
			FUNC8(query,
							  "SELECT tgname, "
							  "tgfoid::pg_catalog.regproc AS tgfname, "
							  "tgtype, tgnargs, tgargs, tgenabled, "
							  "tgisconstraint, tgconstrname, tgdeferrable, "
							  "tgconstrrelid, tginitdeferred, tableoid, oid, "
							  "tgconstrrelid::pg_catalog.regclass AS tgconstrrelname "
							  "FROM pg_catalog.pg_trigger t "
							  "WHERE tgrelid = '%u'::pg_catalog.oid "
							  "AND (NOT tgisconstraint "
							  " OR NOT EXISTS"
							  "  (SELECT 1 FROM pg_catalog.pg_depend d "
							  "   JOIN pg_catalog.pg_constraint c ON (d.refclassid = c.tableoid AND d.refobjid = c.oid) "
							  "   WHERE d.classid = t.tableoid AND d.objid = t.oid AND d.deptype = 'i' AND c.contype = 'f'))",
							  tbinfo->dobj.catId.oid);
		}

		res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

		ntups = FUNC7(res);

		i_tableoid = FUNC4(res, "tableoid");
		i_oid = FUNC4(res, "oid");
		i_tgname = FUNC4(res, "tgname");
		i_tgfname = FUNC4(res, "tgfname");
		i_tgtype = FUNC4(res, "tgtype");
		i_tgnargs = FUNC4(res, "tgnargs");
		i_tgargs = FUNC4(res, "tgargs");
		i_tgisconstraint = FUNC4(res, "tgisconstraint");
		i_tgconstrname = FUNC4(res, "tgconstrname");
		i_tgconstrrelid = FUNC4(res, "tgconstrrelid");
		i_tgconstrrelname = FUNC4(res, "tgconstrrelname");
		i_tgenabled = FUNC4(res, "tgenabled");
		i_tgdeferrable = FUNC4(res, "tgdeferrable");
		i_tginitdeferred = FUNC4(res, "tginitdeferred");
		i_tgdef = FUNC4(res, "tgdef");

		tginfo = (TriggerInfo *) FUNC15(ntups * sizeof(TriggerInfo));

		tbinfo->numTriggers = ntups;
		tbinfo->triggers = tginfo;

		for (j = 0; j < ntups; j++)
		{
			tginfo[j].dobj.objType = DO_TRIGGER;
			tginfo[j].dobj.catId.tableoid = FUNC10(FUNC6(res, j, i_tableoid));
			tginfo[j].dobj.catId.oid = FUNC10(FUNC6(res, j, i_oid));
			FUNC0(&tginfo[j].dobj);
			tginfo[j].dobj.name = FUNC16(FUNC6(res, j, i_tgname));
			tginfo[j].dobj.namespace = tbinfo->dobj.namespace;
			tginfo[j].tgtable = tbinfo;
			tginfo[j].tgenabled = *(FUNC6(res, j, i_tgenabled));
			if (i_tgdef >= 0)
			{
				tginfo[j].tgdef = FUNC16(FUNC6(res, j, i_tgdef));

				/* remaining fields are not valid if we have tgdef */
				tginfo[j].tgfname = NULL;
				tginfo[j].tgtype = 0;
				tginfo[j].tgnargs = 0;
				tginfo[j].tgargs = NULL;
				tginfo[j].tgisconstraint = false;
				tginfo[j].tgdeferrable = false;
				tginfo[j].tginitdeferred = false;
				tginfo[j].tgconstrname = NULL;
				tginfo[j].tgconstrrelid = InvalidOid;
				tginfo[j].tgconstrrelname = NULL;
			}
			else
			{
				tginfo[j].tgdef = NULL;

				tginfo[j].tgfname = FUNC16(FUNC6(res, j, i_tgfname));
				tginfo[j].tgtype = FUNC9(FUNC6(res, j, i_tgtype));
				tginfo[j].tgnargs = FUNC9(FUNC6(res, j, i_tgnargs));
				tginfo[j].tgargs = FUNC16(FUNC6(res, j, i_tgargs));
				tginfo[j].tgisconstraint = *(FUNC6(res, j, i_tgisconstraint)) == 't';
				tginfo[j].tgdeferrable = *(FUNC6(res, j, i_tgdeferrable)) == 't';
				tginfo[j].tginitdeferred = *(FUNC6(res, j, i_tginitdeferred)) == 't';

				if (tginfo[j].tgisconstraint)
				{
					tginfo[j].tgconstrname = FUNC16(FUNC6(res, j, i_tgconstrname));
					tginfo[j].tgconstrrelid = FUNC10(FUNC6(res, j, i_tgconstrrelid));
					if (FUNC2(tginfo[j].tgconstrrelid))
					{
						if (FUNC5(res, j, i_tgconstrrelname))
							FUNC13("query produced null referenced table name for foreign key trigger \"%s\" on table \"%s\" (OID of table: %u)",
								  tginfo[j].dobj.name,
								  tbinfo->dobj.name,
								  tginfo[j].tgconstrrelid);
						tginfo[j].tgconstrrelname = FUNC16(FUNC6(res, j, i_tgconstrrelname));
					}
					else
						tginfo[j].tgconstrrelname = NULL;
				}
				else
				{
					tginfo[j].tgconstrname = NULL;
					tginfo[j].tgconstrrelid = InvalidOid;
					tginfo[j].tgconstrrelname = NULL;
				}
			}
		}

		FUNC3(res);
	}

	FUNC12(query);
}