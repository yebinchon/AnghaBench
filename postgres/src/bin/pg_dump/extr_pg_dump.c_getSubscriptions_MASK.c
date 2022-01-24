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

/* Type definitions */
struct TYPE_17__ {void* oid; void* tableoid; } ;
struct TYPE_22__ {void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_21__ {int remoteVersion; TYPE_4__* dopt; } ;
struct TYPE_20__ {scalar_t__ no_subscriptions; } ;
struct TYPE_19__ {char* data; } ;
struct TYPE_18__ {TYPE_6__ dobj; void* rolname; void* subpublications; void* subsynccommit; int /*<<< orphan*/ * subslotname; void* subconninfo; } ;
typedef  TYPE_2__ SubscriptionInfo ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ DumpOptions ;
typedef  TYPE_5__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  DO_SUBSCRIPTION ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 TYPE_2__* FUNC14 (int) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,TYPE_5__*) ; 
 scalar_t__ FUNC18 (void*) ; 
 int /*<<< orphan*/  username_subquery ; 

void
FUNC19(Archive *fout)
{
	DumpOptions *dopt = fout->dopt;
	PQExpBuffer query;
	PGresult   *res;
	SubscriptionInfo *subinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_subname;
	int			i_rolname;
	int			i_subconninfo;
	int			i_subslotname;
	int			i_subsynccommit;
	int			i_subpublications;
	int			i,
				ntups;

	if (dopt->no_subscriptions || fout->remoteVersion < 100000)
		return;

	if (!FUNC12(fout))
	{
		int			n;

		res = FUNC1(fout,
							  "SELECT count(*) FROM pg_subscription "
							  "WHERE subdbid = (SELECT oid FROM pg_database"
							  "                 WHERE datname = current_database())",
							  PGRES_TUPLES_OK);
		n = FUNC8(FUNC5(res, 0, 0));
		if (n > 0)
			FUNC13("subscriptions not dumped because current user is not a superuser");
		FUNC2(res);
		return;
	}

	query = FUNC10();

	FUNC16(query);

	/* Get the subscriptions in current database. */
	FUNC7(query,
					  "SELECT s.tableoid, s.oid, s.subname,"
					  "(%s s.subowner) AS rolname, "
					  " s.subconninfo, s.subslotname, s.subsynccommit, "
					  " s.subpublications "
					  "FROM pg_subscription s "
					  "WHERE s.subdbid = (SELECT oid FROM pg_database"
					  "                   WHERE datname = current_database())",
					  username_subquery);
	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC6(res);

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_subname = FUNC3(res, "subname");
	i_rolname = FUNC3(res, "rolname");
	i_subconninfo = FUNC3(res, "subconninfo");
	i_subslotname = FUNC3(res, "subslotname");
	i_subsynccommit = FUNC3(res, "subsynccommit");
	i_subpublications = FUNC3(res, "subpublications");

	subinfo = FUNC14(ntups * sizeof(SubscriptionInfo));

	for (i = 0; i < ntups; i++)
	{
		subinfo[i].dobj.objType = DO_SUBSCRIPTION;
		subinfo[i].dobj.catId.tableoid =
			FUNC9(FUNC5(res, i, i_tableoid));
		subinfo[i].dobj.catId.oid = FUNC9(FUNC5(res, i, i_oid));
		FUNC0(&subinfo[i].dobj);
		subinfo[i].dobj.name = FUNC15(FUNC5(res, i, i_subname));
		subinfo[i].rolname = FUNC15(FUNC5(res, i, i_rolname));
		subinfo[i].subconninfo = FUNC15(FUNC5(res, i, i_subconninfo));
		if (FUNC4(res, i, i_subslotname))
			subinfo[i].subslotname = NULL;
		else
			subinfo[i].subslotname = FUNC15(FUNC5(res, i, i_subslotname));
		subinfo[i].subsynccommit =
			FUNC15(FUNC5(res, i, i_subsynccommit));
		subinfo[i].subpublications =
			FUNC15(FUNC5(res, i, i_subpublications));

		if (FUNC18(subinfo[i].rolname) == 0)
			FUNC13("owner of subscription \"%s\" appears to be invalid",
						   subinfo[i].dobj.name);

		/* Decide whether we want to dump it */
		FUNC17(&(subinfo[i].dobj), fout);
	}
	FUNC2(res);

	FUNC11(query);
}