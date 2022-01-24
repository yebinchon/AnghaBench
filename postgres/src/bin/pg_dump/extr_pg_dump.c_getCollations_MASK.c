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
struct TYPE_17__ {TYPE_5__ dobj; void* rolname; } ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ CollInfo ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DO_COLLATION ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,void*) ; 
 scalar_t__ FUNC11 (int) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  username_subquery ; 

CollInfo *
FUNC14(Archive *fout, int *numCollations)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	CollInfo   *collinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_collname;
	int			i_collnamespace;
	int			i_rolname;

	/* Collations didn't exist pre-9.1 */
	if (fout->remoteVersion < 90100)
	{
		*numCollations = 0;
		return NULL;
	}

	query = FUNC8();

	/*
	 * find all collations, including builtin collations; we filter out
	 * system-defined collations at dump-out time.
	 */

	FUNC6(query, "SELECT tableoid, oid, collname, "
					  "collnamespace, "
					  "(%s collowner) AS rolname "
					  "FROM pg_collation",
					  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numCollations = ntups;

	collinfo = (CollInfo *) FUNC11(ntups * sizeof(CollInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_collname = FUNC3(res, "collname");
	i_collnamespace = FUNC3(res, "collnamespace");
	i_rolname = FUNC3(res, "rolname");

	for (i = 0; i < ntups; i++)
	{
		collinfo[i].dobj.objType = DO_COLLATION;
		collinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		collinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&collinfo[i].dobj);
		collinfo[i].dobj.name = FUNC12(FUNC4(res, i, i_collname));
		collinfo[i].dobj.namespace =
			FUNC10(fout,
						  FUNC7(FUNC4(res, i, i_collnamespace)));
		collinfo[i].rolname = FUNC12(FUNC4(res, i, i_rolname));

		/* Decide whether we want to dump it */
		FUNC13(&(collinfo[i].dobj), fout);

		/* Collations do not currently have ACLs. */
		collinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC9(query);

	return collinfo;
}