#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {void* oid; void* tableoid; } ;
struct TYPE_19__ {int /*<<< orphan*/  dump; int /*<<< orphan*/  namespace; void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
struct TYPE_16__ {TYPE_5__ dobj; void* cfgparser; void* rolname; } ;
typedef  TYPE_2__ TSConfigInfo ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DO_TSCONFIG ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,void*) ; 
 scalar_t__ FUNC11 (int) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  username_subquery ; 

TSConfigInfo *
FUNC14(Archive *fout, int *numTSConfigs)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	TSConfigInfo *cfginfo;
	int			i_tableoid;
	int			i_oid;
	int			i_cfgname;
	int			i_cfgnamespace;
	int			i_rolname;
	int			i_cfgparser;

	/* Before 8.3, there is no built-in text search support */
	if (fout->remoteVersion < 80300)
	{
		*numTSConfigs = 0;
		return NULL;
	}

	query = FUNC8();

	FUNC6(query, "SELECT tableoid, oid, cfgname, "
					  "cfgnamespace, (%s cfgowner) AS rolname, cfgparser "
					  "FROM pg_ts_config",
					  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numTSConfigs = ntups;

	cfginfo = (TSConfigInfo *) FUNC11(ntups * sizeof(TSConfigInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_cfgname = FUNC3(res, "cfgname");
	i_cfgnamespace = FUNC3(res, "cfgnamespace");
	i_rolname = FUNC3(res, "rolname");
	i_cfgparser = FUNC3(res, "cfgparser");

	for (i = 0; i < ntups; i++)
	{
		cfginfo[i].dobj.objType = DO_TSCONFIG;
		cfginfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		cfginfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&cfginfo[i].dobj);
		cfginfo[i].dobj.name = FUNC12(FUNC4(res, i, i_cfgname));
		cfginfo[i].dobj.namespace =
			FUNC10(fout,
						  FUNC7(FUNC4(res, i, i_cfgnamespace)));
		cfginfo[i].rolname = FUNC12(FUNC4(res, i, i_rolname));
		cfginfo[i].cfgparser = FUNC7(FUNC4(res, i, i_cfgparser));

		/* Decide whether we want to dump it */
		FUNC13(&(cfginfo[i].dobj), fout);

		/* Text Search Configurations do not currently have ACLs. */
		cfginfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC9(query);

	return cfginfo;
}