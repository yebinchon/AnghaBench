#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_17__ {int remoteVersion; int /*<<< orphan*/ * dopt; } ;
struct TYPE_14__ {void* oid; void* tableoid; } ;
struct TYPE_13__ {void* name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_16__ {int relocatable; void* extcondition; void* extconfig; void* extversion; void* namespace; TYPE_12__ dobj; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_3__ ExtensionInfo ;
typedef  int /*<<< orphan*/  DumpOptions ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*) ; 
 int /*<<< orphan*/  DO_EXTENSION ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 void* FUNC7 (char*) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int) ; 
 void* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 

ExtensionInfo *
FUNC13(Archive *fout, int *numExtensions)
{
	DumpOptions *dopt = fout->dopt;
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	ExtensionInfo *extinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_extname;
	int			i_nspname;
	int			i_extrelocatable;
	int			i_extversion;
	int			i_extconfig;
	int			i_extcondition;

	/*
	 * Before 9.1, there are no extensions.
	 */
	if (fout->remoteVersion < 90100)
	{
		*numExtensions = 0;
		return NULL;
	}

	query = FUNC8();

	FUNC6(query, "SELECT x.tableoid, x.oid, "
						 "x.extname, n.nspname, x.extrelocatable, x.extversion, x.extconfig, x.extcondition "
						 "FROM pg_extension x "
						 "JOIN pg_namespace n ON n.oid = x.extnamespace");

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);

	extinfo = (ExtensionInfo *) FUNC10(ntups * sizeof(ExtensionInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_extname = FUNC3(res, "extname");
	i_nspname = FUNC3(res, "nspname");
	i_extrelocatable = FUNC3(res, "extrelocatable");
	i_extversion = FUNC3(res, "extversion");
	i_extconfig = FUNC3(res, "extconfig");
	i_extcondition = FUNC3(res, "extcondition");

	for (i = 0; i < ntups; i++)
	{
		extinfo[i].dobj.objType = DO_EXTENSION;
		extinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		extinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&extinfo[i].dobj);
		extinfo[i].dobj.name = FUNC11(FUNC4(res, i, i_extname));
		extinfo[i].namespace = FUNC11(FUNC4(res, i, i_nspname));
		extinfo[i].relocatable = *(FUNC4(res, i, i_extrelocatable)) == 't';
		extinfo[i].extversion = FUNC11(FUNC4(res, i, i_extversion));
		extinfo[i].extconfig = FUNC11(FUNC4(res, i, i_extconfig));
		extinfo[i].extcondition = FUNC11(FUNC4(res, i, i_extcondition));

		/* Decide whether we want to dump it */
		FUNC12(&(extinfo[i]), dopt);
	}

	FUNC2(res);
	FUNC9(query);

	*numExtensions = ntups;

	return extinfo;
}