#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  oid; } ;
struct TYPE_28__ {int dump; int /*<<< orphan*/  name; TYPE_4__* namespace; TYPE_2__ catId; } ;
struct TYPE_29__ {scalar_t__ relkind; TYPE_5__ dobj; } ;
typedef  TYPE_6__ TableInfo ;
struct TYPE_32__ {scalar_t__ no_publications; } ;
struct TYPE_31__ {int /*<<< orphan*/  data; } ;
struct TYPE_26__ {void* oid; void* tableoid; } ;
struct TYPE_23__ {int /*<<< orphan*/  name; TYPE_4__* namespace; TYPE_3__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_30__ {TYPE_11__ dobj; TYPE_6__* pubtable; int /*<<< orphan*/  pubname; } ;
struct TYPE_24__ {int /*<<< orphan*/  name; } ;
struct TYPE_27__ {TYPE_1__ dobj; } ;
struct TYPE_22__ {int remoteVersion; TYPE_9__* dopt; } ;
typedef  TYPE_7__ PublicationRelInfo ;
typedef  TYPE_8__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_9__ DumpOptions ;
typedef  TYPE_10__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_11__*) ; 
 int /*<<< orphan*/  DO_PUBLICATION_REL ; 
 int DUMP_COMPONENT_DEFINITION ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_11__*,TYPE_10__*) ; 

void
FUNC15(Archive *fout, TableInfo tblinfo[], int numTables)
{
	PQExpBuffer query;
	PGresult   *res;
	PublicationRelInfo *pubrinfo;
	DumpOptions *dopt = fout->dopt;
	int			i_tableoid;
	int			i_oid;
	int			i_pubname;
	int			i,
				j,
				ntups;

	if (dopt->no_publications || fout->remoteVersion < 100000)
		return;

	query = FUNC8();

	for (i = 0; i < numTables; i++)
	{
		TableInfo  *tbinfo = &tblinfo[i];

		/* Only plain tables can be aded to publications. */
		if (tbinfo->relkind != RELKIND_RELATION)
			continue;

		/*
		 * Ignore publication membership of tables whose definitions are not
		 * to be dumped.
		 */
		if (!(tbinfo->dobj.dump & DUMP_COMPONENT_DEFINITION))
			continue;

		FUNC10("reading publication membership for table \"%s.%s\"",
					tbinfo->dobj.namespace->dobj.name,
					tbinfo->dobj.name);

		FUNC13(query);

		/* Get the publication membership for the table. */
		FUNC6(query,
						  "SELECT pr.tableoid, pr.oid, p.pubname "
						  "FROM pg_publication_rel pr, pg_publication p "
						  "WHERE pr.prrelid = '%u'"
						  "  AND p.oid = pr.prpubid",
						  tbinfo->dobj.catId.oid);
		res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

		ntups = FUNC5(res);

		if (ntups == 0)
		{
			/*
			 * Table is not member of any publications. Clean up and return.
			 */
			FUNC2(res);
			continue;
		}

		i_tableoid = FUNC3(res, "tableoid");
		i_oid = FUNC3(res, "oid");
		i_pubname = FUNC3(res, "pubname");

		pubrinfo = FUNC11(ntups * sizeof(PublicationRelInfo));

		for (j = 0; j < ntups; j++)
		{
			pubrinfo[j].dobj.objType = DO_PUBLICATION_REL;
			pubrinfo[j].dobj.catId.tableoid =
				FUNC7(FUNC4(res, j, i_tableoid));
			pubrinfo[j].dobj.catId.oid = FUNC7(FUNC4(res, j, i_oid));
			FUNC0(&pubrinfo[j].dobj);
			pubrinfo[j].dobj.namespace = tbinfo->dobj.namespace;
			pubrinfo[j].dobj.name = tbinfo->dobj.name;
			pubrinfo[j].pubname = FUNC12(FUNC4(res, j, i_pubname));
			pubrinfo[j].pubtable = tbinfo;

			/* Decide whether we want to dump it */
			FUNC14(&(pubrinfo[j].dobj), fout);
		}
		FUNC2(res);
	}
	FUNC9(query);
}