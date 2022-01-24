#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* oid; void* tableoid; } ;
struct TYPE_13__ {int /*<<< orphan*/  dump; int /*<<< orphan*/  namespace; void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_12__ {TYPE_4__ dobj; void* rolname; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ ConvInfo ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  DO_CONVERSION ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC11 (int) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  username_subquery ; 

ConvInfo *
FUNC14(Archive *fout, int *numConversions)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	ConvInfo   *convinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_conname;
	int			i_connamespace;
	int			i_rolname;

	query = FUNC8();

	/*
	 * find all conversions, including builtin conversions; we filter out
	 * system-defined conversions at dump-out time.
	 */

	FUNC6(query, "SELECT tableoid, oid, conname, "
					  "connamespace, "
					  "(%s conowner) AS rolname "
					  "FROM pg_conversion",
					  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numConversions = ntups;

	convinfo = (ConvInfo *) FUNC11(ntups * sizeof(ConvInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_conname = FUNC3(res, "conname");
	i_connamespace = FUNC3(res, "connamespace");
	i_rolname = FUNC3(res, "rolname");

	for (i = 0; i < ntups; i++)
	{
		convinfo[i].dobj.objType = DO_CONVERSION;
		convinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		convinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&convinfo[i].dobj);
		convinfo[i].dobj.name = FUNC12(FUNC4(res, i, i_conname));
		convinfo[i].dobj.namespace =
			FUNC10(fout,
						  FUNC7(FUNC4(res, i, i_connamespace)));
		convinfo[i].rolname = FUNC12(FUNC4(res, i, i_rolname));

		/* Decide whether we want to dump it */
		FUNC13(&(convinfo[i].dobj), fout);

		/* Conversions do not currently have ACLs. */
		convinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC9(query);

	return convinfo;
}