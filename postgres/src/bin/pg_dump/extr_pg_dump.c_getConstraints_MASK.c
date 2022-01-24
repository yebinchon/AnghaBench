#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_9__ ;
typedef  struct TYPE_40__   TYPE_8__ ;
typedef  struct TYPE_39__   TYPE_7__ ;
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_23__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_15__ ;
typedef  struct TYPE_30__   TYPE_14__ ;
typedef  struct TYPE_29__   TYPE_13__ ;
typedef  struct TYPE_28__   TYPE_12__ ;
typedef  struct TYPE_27__   TYPE_11__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct TYPE_34__ {int /*<<< orphan*/  oid; } ;
struct TYPE_37__ {int dump; TYPE_4__* namespace; TYPE_2__ catId; int /*<<< orphan*/  name; } ;
struct TYPE_41__ {scalar_t__ relkind; int numIndexes; TYPE_12__* indexes; TYPE_5__ dobj; int /*<<< orphan*/  hastriggers; } ;
typedef  TYPE_9__ TableInfo ;
struct TYPE_40__ {TYPE_10__* head; } ;
struct TYPE_38__ {scalar_t__ oid; } ;
struct TYPE_39__ {TYPE_6__ catId; } ;
struct TYPE_32__ {int /*<<< orphan*/  name; } ;
struct TYPE_36__ {TYPE_1__ dobj; } ;
struct TYPE_35__ {void* oid; void* tableoid; } ;
struct TYPE_33__ {TYPE_4__* namespace; void* name; TYPE_3__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_31__ {int remoteVersion; } ;
struct TYPE_30__ {float contype; int condeferrable; int condeferred; int conislocal; int separate; TYPE_23__ dobj; void* confrelid; scalar_t__ conindex; void* condef; int /*<<< orphan*/ * condomain; TYPE_9__* contable; } ;
struct TYPE_29__ {int /*<<< orphan*/  dumpId; } ;
struct TYPE_28__ {TYPE_8__ partattaches; TYPE_7__ dobj; } ;
struct TYPE_27__ {int /*<<< orphan*/  data; } ;
struct TYPE_26__ {scalar_t__ ptr; struct TYPE_26__* next; } ;
typedef  TYPE_10__ SimplePtrListCell ;
typedef  TYPE_11__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  scalar_t__ Oid ;
typedef  TYPE_12__ IndxInfo ;
typedef  TYPE_13__ DumpableObject ;
typedef  TYPE_14__ ConstraintInfo ;
typedef  TYPE_15__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_23__*) ; 
 int /*<<< orphan*/  DO_FK_CONSTRAINT ; 
 int DUMP_COMPONENT_DEFINITION ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_23__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*) ; 
 TYPE_9__* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_11__*) ; 

void
FUNC16(Archive *fout, TableInfo tblinfo[], int numTables)
{
	int			i,
				j;
	ConstraintInfo *constrinfo;
	PQExpBuffer query;
	PGresult   *res;
	int			i_contableoid,
				i_conoid,
				i_conname,
				i_confrelid,
				i_conindid,
				i_condef;
	int			ntups;

	query = FUNC9();

	for (i = 0; i < numTables; i++)
	{
		TableInfo  *tbinfo = &tblinfo[i];

		/*
		 * For partitioned tables, foreign keys have no triggers so they must
		 * be included anyway in case some foreign keys are defined.
		 */
		if ((!tbinfo->hastriggers &&
			 tbinfo->relkind != RELKIND_PARTITIONED_TABLE) ||
			!(tbinfo->dobj.dump & DUMP_COMPONENT_DEFINITION))
			continue;

		FUNC12("reading foreign key constraints for table \"%s.%s\"",
					tbinfo->dobj.namespace->dobj.name,
					tbinfo->dobj.name);

		FUNC15(query);
		if (fout->remoteVersion >= 110000)
			FUNC7(query,
							  "SELECT tableoid, oid, conname, confrelid, conindid, "
							  "pg_catalog.pg_get_constraintdef(oid) AS condef "
							  "FROM pg_catalog.pg_constraint "
							  "WHERE conrelid = '%u'::pg_catalog.oid "
							  "AND conparentid = 0 "
							  "AND contype = 'f'",
							  tbinfo->dobj.catId.oid);
		else
			FUNC7(query,
							  "SELECT tableoid, oid, conname, confrelid, 0 as conindid, "
							  "pg_catalog.pg_get_constraintdef(oid) AS condef "
							  "FROM pg_catalog.pg_constraint "
							  "WHERE conrelid = '%u'::pg_catalog.oid "
							  "AND contype = 'f'",
							  tbinfo->dobj.catId.oid);
		res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

		ntups = FUNC5(res);

		i_contableoid = FUNC3(res, "tableoid");
		i_conoid = FUNC3(res, "oid");
		i_conname = FUNC3(res, "conname");
		i_confrelid = FUNC3(res, "confrelid");
		i_conindid = FUNC3(res, "conindid");
		i_condef = FUNC3(res, "condef");

		constrinfo = (ConstraintInfo *) FUNC13(ntups * sizeof(ConstraintInfo));

		for (j = 0; j < ntups; j++)
		{
			TableInfo *reftable;

			constrinfo[j].dobj.objType = DO_FK_CONSTRAINT;
			constrinfo[j].dobj.catId.tableoid = FUNC8(FUNC4(res, j, i_contableoid));
			constrinfo[j].dobj.catId.oid = FUNC8(FUNC4(res, j, i_conoid));
			FUNC0(&constrinfo[j].dobj);
			constrinfo[j].dobj.name = FUNC14(FUNC4(res, j, i_conname));
			constrinfo[j].dobj.namespace = tbinfo->dobj.namespace;
			constrinfo[j].contable = tbinfo;
			constrinfo[j].condomain = NULL;
			constrinfo[j].contype = 'f';
			constrinfo[j].condef = FUNC14(FUNC4(res, j, i_condef));
			constrinfo[j].confrelid = FUNC8(FUNC4(res, j, i_confrelid));
			constrinfo[j].conindex = 0;
			constrinfo[j].condeferrable = false;
			constrinfo[j].condeferred = false;
			constrinfo[j].conislocal = true;
			constrinfo[j].separate = true;

			/*
			 * Restoring an FK that points to a partitioned table requires
			 * that all partition indexes have been attached beforehand.
			 * Ensure that happens by making the constraint depend on each
			 * index partition attach object.
			 */
			reftable = FUNC11(constrinfo[j].confrelid);
			if (reftable && reftable->relkind == RELKIND_PARTITIONED_TABLE)
			{
				IndxInfo   *refidx;
				Oid			indexOid = FUNC8(FUNC4(res, j, i_conindid));

				if (indexOid != InvalidOid)
				{
					for (int k = 0; k < reftable->numIndexes; k++)
					{
						SimplePtrListCell *cell;

						/* not our index? */
						if (reftable->indexes[k].dobj.catId.oid != indexOid)
							continue;

						refidx = &reftable->indexes[k];
						for (cell = refidx->partattaches.head; cell;
							 cell = cell->next)
							FUNC6(&constrinfo[j].dobj,
												((DumpableObject *)
												 cell->ptr)->dumpId);
						break;
					}
				}
			}
		}

		FUNC2(res);
	}

	FUNC10(query);
}