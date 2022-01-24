#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_15__ {void* oid; void* tableoid; } ;
struct TYPE_14__ {int /*<<< orphan*/  dump; int /*<<< orphan*/ * namespace; void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_18__ {TYPE_13__ dobj; int /*<<< orphan*/  amtype; void* amhandler; } ;
struct TYPE_17__ {int remoteVersion; } ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ Archive ;
typedef  TYPE_4__ AccessMethodInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_13__*) ; 
 int /*<<< orphan*/  DO_ACCESS_METHOD ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_3__*) ; 

AccessMethodInfo *
FUNC13(Archive *fout, int *numAccessMethods)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	AccessMethodInfo *aminfo;
	int			i_tableoid;
	int			i_oid;
	int			i_amname;
	int			i_amhandler;
	int			i_amtype;

	/* Before 9.6, there are no user-defined access methods */
	if (fout->remoteVersion < 90600)
	{
		*numAccessMethods = 0;
		return NULL;
	}

	query = FUNC8();

	/* Select all access methods from pg_am table */
	FUNC6(query, "SELECT tableoid, oid, amname, amtype, "
						 "amhandler::pg_catalog.regproc AS amhandler "
						 "FROM pg_am");

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numAccessMethods = ntups;

	aminfo = (AccessMethodInfo *) FUNC10(ntups * sizeof(AccessMethodInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_amname = FUNC3(res, "amname");
	i_amhandler = FUNC3(res, "amhandler");
	i_amtype = FUNC3(res, "amtype");

	for (i = 0; i < ntups; i++)
	{
		aminfo[i].dobj.objType = DO_ACCESS_METHOD;
		aminfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		aminfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&aminfo[i].dobj);
		aminfo[i].dobj.name = FUNC11(FUNC4(res, i, i_amname));
		aminfo[i].dobj.namespace = NULL;
		aminfo[i].amhandler = FUNC11(FUNC4(res, i, i_amhandler));
		aminfo[i].amtype = *(FUNC4(res, i, i_amtype));

		/* Decide whether we want to dump it */
		FUNC12(&(aminfo[i]), fout);

		/* Access methods do not currently have ACLs. */
		aminfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC9(query);

	return aminfo;
}