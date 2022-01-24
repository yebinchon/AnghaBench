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
struct TYPE_19__ {void* name; int /*<<< orphan*/  dump; int /*<<< orphan*/  namespace; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {TYPE_5__ dobj; void* rolname; } ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ OpfamilyInfo ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DO_OPFAMILY ; 
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
 int /*<<< orphan*/  FUNC11 (char*,void*) ; 
 scalar_t__ FUNC12 (int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC15 (void*) ; 
 int /*<<< orphan*/  username_subquery ; 

OpfamilyInfo *
FUNC16(Archive *fout, int *numOpfamilies)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	OpfamilyInfo *opfinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_opfname;
	int			i_opfnamespace;
	int			i_rolname;

	/* Before 8.3, there is no separate concept of opfamilies */
	if (fout->remoteVersion < 80300)
	{
		*numOpfamilies = 0;
		return NULL;
	}

	query = FUNC8();

	/*
	 * find all opfamilies, including builtin opfamilies; we filter out
	 * system-defined opfamilies at dump-out time.
	 */

	FUNC6(query, "SELECT tableoid, oid, opfname, "
					  "opfnamespace, "
					  "(%s opfowner) AS rolname "
					  "FROM pg_opfamily",
					  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numOpfamilies = ntups;

	opfinfo = (OpfamilyInfo *) FUNC12(ntups * sizeof(OpfamilyInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_opfname = FUNC3(res, "opfname");
	i_opfnamespace = FUNC3(res, "opfnamespace");
	i_rolname = FUNC3(res, "rolname");

	for (i = 0; i < ntups; i++)
	{
		opfinfo[i].dobj.objType = DO_OPFAMILY;
		opfinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		opfinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&opfinfo[i].dobj);
		opfinfo[i].dobj.name = FUNC13(FUNC4(res, i, i_opfname));
		opfinfo[i].dobj.namespace =
			FUNC10(fout,
						  FUNC7(FUNC4(res, i, i_opfnamespace)));
		opfinfo[i].rolname = FUNC13(FUNC4(res, i, i_rolname));

		/* Decide whether we want to dump it */
		FUNC14(&(opfinfo[i].dobj), fout);

		/* Extensions do not currently have ACLs. */
		opfinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

		if (FUNC15(opfinfo[i].rolname) == 0)
			FUNC11("owner of operator family \"%s\" appears to be invalid",
						   opfinfo[i].dobj.name);
	}

	FUNC2(res);

	FUNC9(query);

	return opfinfo;
}