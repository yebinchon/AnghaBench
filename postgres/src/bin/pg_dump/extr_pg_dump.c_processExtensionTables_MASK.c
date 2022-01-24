#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_22__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_31__ {TYPE_4__* namespace; } ;
struct TYPE_33__ {TYPE_6__* dataObj; TYPE_5__ dobj; } ;
typedef  TYPE_7__ TableInfo ;
struct TYPE_26__ {int dump; } ;
struct TYPE_35__ {char* extconfig; char* extcondition; TYPE_1__ dobj; } ;
struct TYPE_34__ {int /*<<< orphan*/  data; } ;
struct TYPE_27__ {int /*<<< orphan*/  dumpId; } ;
struct TYPE_32__ {TYPE_22__ dobj; int /*<<< orphan*/  filtercond; } ;
struct TYPE_28__ {int /*<<< orphan*/  oid; } ;
struct TYPE_29__ {int dump; TYPE_2__ catId; } ;
struct TYPE_30__ {TYPE_3__ dobj; } ;
struct TYPE_25__ {int /*<<< orphan*/ * head; } ;
struct TYPE_24__ {int /*<<< orphan*/ * dopt; } ;
typedef  TYPE_8__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_9__ ExtensionInfo ;
typedef  int /*<<< orphan*/  DumpOptions ;
typedef  TYPE_10__ Archive ;

/* Variables and functions */
 int DUMP_COMPONENT_DATA ; 
 int DUMP_COMPONENT_DEFINITION ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_22__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_8__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 TYPE_7__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 scalar_t__ FUNC12 (char*,char***,int*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,char*) ; 
 TYPE_11__ schema_exclude_oids ; 
 scalar_t__ FUNC15 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*) ; 
 TYPE_11__ table_exclude_oids ; 
 TYPE_11__ table_include_oids ; 

void
FUNC17(Archive *fout, ExtensionInfo extinfo[],
					   int numExtensions)
{
	DumpOptions *dopt = fout->dopt;
	PQExpBuffer query;
	PGresult   *res;
	int			ntups,
				i;
	int			i_conrelid,
				i_confrelid;

	/* Nothing to do if no extensions */
	if (numExtensions == 0)
		return;

	/*
	 * Identify extension configuration tables and create TableDataInfo
	 * objects for them, ensuring their data will be dumped even though the
	 * tables themselves won't be.
	 *
	 * Note that we create TableDataInfo objects even in schemaOnly mode, ie,
	 * user data in a configuration table is treated like schema data. This
	 * seems appropriate since system data in a config table would get
	 * reloaded by CREATE EXTENSION.
	 */
	for (i = 0; i < numExtensions; i++)
	{
		ExtensionInfo *curext = &(extinfo[i]);
		char	   *extconfig = curext->extconfig;
		char	   *extcondition = curext->extcondition;
		char	  **extconfigarray = NULL;
		char	  **extconditionarray = NULL;
		int			nconfigitems;
		int			nconditionitems;

		if (FUNC12(extconfig, &extconfigarray, &nconfigitems) &&
			FUNC12(extcondition, &extconditionarray, &nconditionitems) &&
			nconfigitems == nconditionitems)
		{
			int			j;

			for (j = 0; j < nconfigitems; j++)
			{
				TableInfo  *configtbl;
				Oid			configtbloid = FUNC6(extconfigarray[j]);
				bool		dumpobj =
				curext->dobj.dump & DUMP_COMPONENT_DEFINITION;

				configtbl = FUNC9(configtbloid);
				if (configtbl == NULL)
					continue;

				/*
				 * Tables of not-to-be-dumped extensions shouldn't be dumped
				 * unless the table or its schema is explicitly included
				 */
				if (!(curext->dobj.dump & DUMP_COMPONENT_DEFINITION))
				{
					/* check table explicitly requested */
					if (table_include_oids.head != NULL &&
						FUNC15(&table_include_oids,
											   configtbloid))
						dumpobj = true;

					/* check table's schema explicitly requested */
					if (configtbl->dobj.namespace->dobj.dump &
						DUMP_COMPONENT_DATA)
						dumpobj = true;
				}

				/* check table excluded by an exclusion switch */
				if (table_exclude_oids.head != NULL &&
					FUNC15(&table_exclude_oids,
										   configtbloid))
					dumpobj = false;

				/* check schema excluded by an exclusion switch */
				if (FUNC15(&schema_exclude_oids,
										   configtbl->dobj.namespace->dobj.catId.oid))
					dumpobj = false;

				if (dumpobj)
				{
					FUNC11(dopt, configtbl);
					if (configtbl->dataObj != NULL)
					{
						if (FUNC16(extconditionarray[j]) > 0)
							configtbl->dataObj->filtercond = FUNC13(extconditionarray[j]);
					}
				}
			}
		}
		if (extconfigarray)
			FUNC10(extconfigarray);
		if (extconditionarray)
			FUNC10(extconditionarray);
	}

	/*
	 * Now that all the TableDataInfo objects have been created for all the
	 * extensions, check their FK dependencies and register them to try and
	 * dump the data out in an order that they can be restored in.
	 *
	 * Note that this is not a problem for user tables as their FKs are
	 * recreated after the data has been loaded.
	 */

	query = FUNC7();

	FUNC14(query,
					  "SELECT conrelid, confrelid "
					  "FROM pg_constraint "
					  "JOIN pg_depend ON (objid = confrelid) "
					  "WHERE contype = 'f' "
					  "AND refclassid = 'pg_extension'::regclass "
					  "AND classid = 'pg_class'::regclass;");

	res = FUNC0(fout, query->data, PGRES_TUPLES_OK);
	ntups = FUNC4(res);

	i_conrelid = FUNC2(res, "conrelid");
	i_confrelid = FUNC2(res, "confrelid");

	/* Now get the dependencies and register them */
	for (i = 0; i < ntups; i++)
	{
		Oid			conrelid,
					confrelid;
		TableInfo  *reftable,
				   *contable;

		conrelid = FUNC6(FUNC3(res, i, i_conrelid));
		confrelid = FUNC6(FUNC3(res, i, i_confrelid));
		contable = FUNC9(conrelid);
		reftable = FUNC9(confrelid);

		if (reftable == NULL ||
			reftable->dataObj == NULL ||
			contable == NULL ||
			contable->dataObj == NULL)
			continue;

		/*
		 * Make referencing TABLE_DATA object depend on the referenced table's
		 * TABLE_DATA object.
		 */
		FUNC5(&contable->dataObj->dobj,
							reftable->dataObj->dobj.dumpId);
	}
	FUNC1(res);
	FUNC8(query);
}