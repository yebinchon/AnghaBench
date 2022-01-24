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
struct TYPE_13__ {void* name; int /*<<< orphan*/  dump; int /*<<< orphan*/  namespace; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_12__ {TYPE_4__ dobj; void* rolname; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ OpclassInfo ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  DO_OPCLASS ; 
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
 int /*<<< orphan*/  FUNC11 (char*,void*) ; 
 scalar_t__ FUNC12 (int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (void*) ; 
 int /*<<< orphan*/  username_subquery ; 

OpclassInfo *
FUNC16(Archive *fout, int *numOpclasses)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query = FUNC8();
	OpclassInfo *opcinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_opcname;
	int			i_opcnamespace;
	int			i_rolname;

	/*
	 * find all opclasses, including builtin opclasses; we filter out
	 * system-defined opclasses at dump-out time.
	 */

	FUNC6(query, "SELECT tableoid, oid, opcname, "
					  "opcnamespace, "
					  "(%s opcowner) AS rolname "
					  "FROM pg_opclass",
					  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numOpclasses = ntups;

	opcinfo = (OpclassInfo *) FUNC12(ntups * sizeof(OpclassInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_opcname = FUNC3(res, "opcname");
	i_opcnamespace = FUNC3(res, "opcnamespace");
	i_rolname = FUNC3(res, "rolname");

	for (i = 0; i < ntups; i++)
	{
		opcinfo[i].dobj.objType = DO_OPCLASS;
		opcinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		opcinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&opcinfo[i].dobj);
		opcinfo[i].dobj.name = FUNC13(FUNC4(res, i, i_opcname));
		opcinfo[i].dobj.namespace =
			FUNC10(fout,
						  FUNC7(FUNC4(res, i, i_opcnamespace)));
		opcinfo[i].rolname = FUNC13(FUNC4(res, i, i_rolname));

		/* Decide whether we want to dump it */
		FUNC14(&(opcinfo[i].dobj), fout);

		/* Op Classes do not currently have ACLs. */
		opcinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;

		if (FUNC15(opcinfo[i].rolname) == 0)
			FUNC11("owner of operator class \"%s\" appears to be invalid",
						   opcinfo[i].dobj.name);
	}

	FUNC2(res);

	FUNC9(query);

	return opcinfo;
}