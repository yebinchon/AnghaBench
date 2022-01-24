#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  oid; } ;
struct TYPE_15__ {int /*<<< orphan*/  namespace; TYPE_1__ catId; } ;
struct TYPE_19__ {int nDomChecks; TYPE_12__ dobj; TYPE_5__* domChecks; } ;
typedef  TYPE_3__ TypeInfo ;
struct TYPE_22__ {int remoteVersion; } ;
struct TYPE_18__ {void* oid; void* tableoid; } ;
struct TYPE_16__ {int /*<<< orphan*/  dumpId; int /*<<< orphan*/  namespace; void* name; TYPE_2__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_21__ {char contype; int condeferrable; int condeferred; int conislocal; int separate; TYPE_14__ dobj; scalar_t__ conindex; int /*<<< orphan*/  confrelid; void* condef; TYPE_3__* condomain; int /*<<< orphan*/ * contable; } ;
struct TYPE_20__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_4__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_5__ ConstraintInfo ;
typedef  TYPE_6__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_14__*) ; 
 int /*<<< orphan*/  DO_CONSTRAINT ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (char*) ; 
 TYPE_4__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (int) ; 
 void* FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(Archive *fout, TypeInfo *tyinfo)
{
	int			i;
	ConstraintInfo *constrinfo;
	PQExpBuffer query;
	PGresult   *res;
	int			i_tableoid,
				i_oid,
				i_conname,
				i_consrc;
	int			ntups;

	query = FUNC9();

	if (fout->remoteVersion >= 90100)
		FUNC7(query, "SELECT tableoid, oid, conname, "
						  "pg_catalog.pg_get_constraintdef(oid) AS consrc, "
						  "convalidated "
						  "FROM pg_catalog.pg_constraint "
						  "WHERE contypid = '%u'::pg_catalog.oid "
						  "ORDER BY conname",
						  tyinfo->dobj.catId.oid);

	else
		FUNC7(query, "SELECT tableoid, oid, conname, "
						  "pg_catalog.pg_get_constraintdef(oid) AS consrc, "
						  "true as convalidated "
						  "FROM pg_catalog.pg_constraint "
						  "WHERE contypid = '%u'::pg_catalog.oid "
						  "ORDER BY conname",
						  tyinfo->dobj.catId.oid);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_conname = FUNC3(res, "conname");
	i_consrc = FUNC3(res, "consrc");

	constrinfo = (ConstraintInfo *) FUNC11(ntups * sizeof(ConstraintInfo));

	tyinfo->nDomChecks = ntups;
	tyinfo->domChecks = constrinfo;

	for (i = 0; i < ntups; i++)
	{
		bool		validated = FUNC4(res, i, 4)[0] == 't';

		constrinfo[i].dobj.objType = DO_CONSTRAINT;
		constrinfo[i].dobj.catId.tableoid = FUNC8(FUNC4(res, i, i_tableoid));
		constrinfo[i].dobj.catId.oid = FUNC8(FUNC4(res, i, i_oid));
		FUNC0(&constrinfo[i].dobj);
		constrinfo[i].dobj.name = FUNC12(FUNC4(res, i, i_conname));
		constrinfo[i].dobj.namespace = tyinfo->dobj.namespace;
		constrinfo[i].contable = NULL;
		constrinfo[i].condomain = tyinfo;
		constrinfo[i].contype = 'c';
		constrinfo[i].condef = FUNC12(FUNC4(res, i, i_consrc));
		constrinfo[i].confrelid = InvalidOid;
		constrinfo[i].conindex = 0;
		constrinfo[i].condeferrable = false;
		constrinfo[i].condeferred = false;
		constrinfo[i].conislocal = true;

		constrinfo[i].separate = !validated;

		/*
		 * Make the domain depend on the constraint, ensuring it won't be
		 * output till any constraint dependencies are OK.  If the constraint
		 * has not been validated, it's going to be dumped after the domain
		 * anyway, so this doesn't matter.
		 */
		if (validated)
			FUNC6(&tyinfo->dobj,
								constrinfo[i].dobj.dumpId);
	}

	FUNC2(res);

	FUNC10(query);
}