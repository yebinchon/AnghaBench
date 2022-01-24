#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
struct TYPE_21__ {void* oid; } ;
struct TYPE_24__ {int dump; char* name; TYPE_4__* namespace; TYPE_2__ catId; } ;
struct TYPE_25__ {TYPE_5__ dobj; scalar_t__ rowsec; } ;
typedef  TYPE_6__ TableInfo ;
struct TYPE_28__ {int remoteVersion; } ;
struct TYPE_27__ {int /*<<< orphan*/  data; } ;
struct TYPE_22__ {void* oid; void* tableoid; } ;
struct TYPE_19__ {void* name; TYPE_4__* namespace; TYPE_3__ catId; void* objType; } ;
struct TYPE_26__ {char* polname; char polcmd; int polpermissive; int /*<<< orphan*/ * polwithcheck; int /*<<< orphan*/ * polqual; int /*<<< orphan*/ * polroles; TYPE_18__ dobj; TYPE_6__* poltable; } ;
struct TYPE_20__ {int /*<<< orphan*/  name; } ;
struct TYPE_23__ {TYPE_1__ dobj; } ;
typedef  TYPE_7__ PolicyInfo ;
typedef  TYPE_8__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_9__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_18__*) ; 
 void* DO_POLICY ; 
 int DUMP_COMPONENT_POLICY ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,char*,void*) ; 
 void* FUNC8 (char*) ; 
 TYPE_8__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,char*) ; 
 TYPE_7__* FUNC12 (int) ; 
 void* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*) ; 

void
FUNC15(Archive *fout, TableInfo tblinfo[], int numTables)
{
	PQExpBuffer query;
	PGresult   *res;
	PolicyInfo *polinfo;
	int			i_oid;
	int			i_tableoid;
	int			i_polname;
	int			i_polcmd;
	int			i_polpermissive;
	int			i_polroles;
	int			i_polqual;
	int			i_polwithcheck;
	int			i,
				j,
				ntups;

	if (fout->remoteVersion < 90500)
		return;

	query = FUNC9();

	for (i = 0; i < numTables; i++)
	{
		TableInfo  *tbinfo = &tblinfo[i];

		/* Ignore row security on tables not to be dumped */
		if (!(tbinfo->dobj.dump & DUMP_COMPONENT_POLICY))
			continue;

		FUNC11("reading row security enabled for table \"%s.%s\"",
					tbinfo->dobj.namespace->dobj.name,
					tbinfo->dobj.name);

		/*
		 * Get row security enabled information for the table. We represent
		 * RLS being enabled on a table by creating a PolicyInfo object with
		 * null polname.
		 */
		if (tbinfo->rowsec)
		{
			/*
			 * Note: use tableoid 0 so that this object won't be mistaken for
			 * something that pg_depend entries apply to.
			 */
			polinfo = FUNC12(sizeof(PolicyInfo));
			polinfo->dobj.objType = DO_POLICY;
			polinfo->dobj.catId.tableoid = 0;
			polinfo->dobj.catId.oid = tbinfo->dobj.catId.oid;
			FUNC0(&polinfo->dobj);
			polinfo->dobj.namespace = tbinfo->dobj.namespace;
			polinfo->dobj.name = FUNC13(tbinfo->dobj.name);
			polinfo->poltable = tbinfo;
			polinfo->polname = NULL;
			polinfo->polcmd = '\0';
			polinfo->polpermissive = 0;
			polinfo->polroles = NULL;
			polinfo->polqual = NULL;
			polinfo->polwithcheck = NULL;
		}

		FUNC11("reading policies for table \"%s.%s\"",
					tbinfo->dobj.namespace->dobj.name,
					tbinfo->dobj.name);

		FUNC14(query);

		/* Get the policies for the table. */
		if (fout->remoteVersion >= 100000)
			FUNC7(query,
							  "SELECT oid, tableoid, pol.polname, pol.polcmd, pol.polpermissive, "
							  "CASE WHEN pol.polroles = '{0}' THEN NULL ELSE "
							  "   pg_catalog.array_to_string(ARRAY(SELECT pg_catalog.quote_ident(rolname) from pg_catalog.pg_roles WHERE oid = ANY(pol.polroles)), ', ') END AS polroles, "
							  "pg_catalog.pg_get_expr(pol.polqual, pol.polrelid) AS polqual, "
							  "pg_catalog.pg_get_expr(pol.polwithcheck, pol.polrelid) AS polwithcheck "
							  "FROM pg_catalog.pg_policy pol "
							  "WHERE polrelid = '%u'",
							  tbinfo->dobj.catId.oid);
		else
			FUNC7(query,
							  "SELECT oid, tableoid, pol.polname, pol.polcmd, 't' as polpermissive, "
							  "CASE WHEN pol.polroles = '{0}' THEN NULL ELSE "
							  "   pg_catalog.array_to_string(ARRAY(SELECT pg_catalog.quote_ident(rolname) from pg_catalog.pg_roles WHERE oid = ANY(pol.polroles)), ', ') END AS polroles, "
							  "pg_catalog.pg_get_expr(pol.polqual, pol.polrelid) AS polqual, "
							  "pg_catalog.pg_get_expr(pol.polwithcheck, pol.polrelid) AS polwithcheck "
							  "FROM pg_catalog.pg_policy pol "
							  "WHERE polrelid = '%u'",
							  tbinfo->dobj.catId.oid);
		res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

		ntups = FUNC6(res);

		if (ntups == 0)
		{
			/*
			 * No explicit policies to handle (only the default-deny policy,
			 * which is handled as part of the table definition).  Clean up
			 * and return.
			 */
			FUNC2(res);
			continue;
		}

		i_oid = FUNC3(res, "oid");
		i_tableoid = FUNC3(res, "tableoid");
		i_polname = FUNC3(res, "polname");
		i_polcmd = FUNC3(res, "polcmd");
		i_polpermissive = FUNC3(res, "polpermissive");
		i_polroles = FUNC3(res, "polroles");
		i_polqual = FUNC3(res, "polqual");
		i_polwithcheck = FUNC3(res, "polwithcheck");

		polinfo = FUNC12(ntups * sizeof(PolicyInfo));

		for (j = 0; j < ntups; j++)
		{
			polinfo[j].dobj.objType = DO_POLICY;
			polinfo[j].dobj.catId.tableoid =
				FUNC8(FUNC5(res, j, i_tableoid));
			polinfo[j].dobj.catId.oid = FUNC8(FUNC5(res, j, i_oid));
			FUNC0(&polinfo[j].dobj);
			polinfo[j].dobj.namespace = tbinfo->dobj.namespace;
			polinfo[j].poltable = tbinfo;
			polinfo[j].polname = FUNC13(FUNC5(res, j, i_polname));
			polinfo[j].dobj.name = FUNC13(polinfo[j].polname);

			polinfo[j].polcmd = *(FUNC5(res, j, i_polcmd));
			polinfo[j].polpermissive = *(FUNC5(res, j, i_polpermissive)) == 't';

			if (FUNC4(res, j, i_polroles))
				polinfo[j].polroles = NULL;
			else
				polinfo[j].polroles = FUNC13(FUNC5(res, j, i_polroles));

			if (FUNC4(res, j, i_polqual))
				polinfo[j].polqual = NULL;
			else
				polinfo[j].polqual = FUNC13(FUNC5(res, j, i_polqual));

			if (FUNC4(res, j, i_polwithcheck))
				polinfo[j].polwithcheck = NULL;
			else
				polinfo[j].polwithcheck
					= FUNC13(FUNC5(res, j, i_polwithcheck));
		}
		FUNC2(res);
	}
	FUNC10(query);
}