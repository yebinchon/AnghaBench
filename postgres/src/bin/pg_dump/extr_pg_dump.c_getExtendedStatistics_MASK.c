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
struct TYPE_14__ {void* oid; void* tableoid; } ;
struct TYPE_18__ {int /*<<< orphan*/  dump; int /*<<< orphan*/  namespace; void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_17__ {int remoteVersion; } ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
struct TYPE_15__ {TYPE_5__ dobj; int /*<<< orphan*/  stattarget; void* rolname; } ;
typedef  TYPE_2__ StatsExtInfo ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DO_STATSEXT ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,void*) ; 
 scalar_t__ FUNC12 (int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  username_subquery ; 

void
FUNC15(Archive *fout)
{
	PQExpBuffer query;
	PGresult   *res;
	StatsExtInfo *statsextinfo;
	int			ntups;
	int			i_tableoid;
	int			i_oid;
	int			i_stxname;
	int			i_stxnamespace;
	int			i_rolname;
	int			i_stattarget;
	int			i;

	/* Extended statistics were new in v10 */
	if (fout->remoteVersion < 100000)
		return;

	query = FUNC9();

	if (fout->remoteVersion < 130000)
		FUNC6(query, "SELECT tableoid, oid, stxname, "
						  "stxnamespace, (%s stxowner) AS rolname, (-1) AS stxstattarget "
						  "FROM pg_catalog.pg_statistic_ext",
						  username_subquery);
	else
		FUNC6(query, "SELECT tableoid, oid, stxname, "
						  "stxnamespace, (%s stxowner) AS rolname, stxstattarget "
						  "FROM pg_catalog.pg_statistic_ext",
						  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_stxname = FUNC3(res, "stxname");
	i_stxnamespace = FUNC3(res, "stxnamespace");
	i_rolname = FUNC3(res, "rolname");
	i_stattarget = FUNC3(res, "stxstattarget");

	statsextinfo = (StatsExtInfo *) FUNC12(ntups * sizeof(StatsExtInfo));

	for (i = 0; i < ntups; i++)
	{
		statsextinfo[i].dobj.objType = DO_STATSEXT;
		statsextinfo[i].dobj.catId.tableoid = FUNC8(FUNC4(res, i, i_tableoid));
		statsextinfo[i].dobj.catId.oid = FUNC8(FUNC4(res, i, i_oid));
		FUNC0(&statsextinfo[i].dobj);
		statsextinfo[i].dobj.name = FUNC13(FUNC4(res, i, i_stxname));
		statsextinfo[i].dobj.namespace =
			FUNC11(fout,
						  FUNC8(FUNC4(res, i, i_stxnamespace)));
		statsextinfo[i].rolname = FUNC13(FUNC4(res, i, i_rolname));
		statsextinfo[i].stattarget = FUNC7(FUNC4(res, i, i_stattarget));

		/* Decide whether we want to dump it */
		FUNC14(&(statsextinfo[i].dobj), fout);

		/* Stats objects do not currently have ACLs. */
		statsextinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);
	FUNC10(query);
}