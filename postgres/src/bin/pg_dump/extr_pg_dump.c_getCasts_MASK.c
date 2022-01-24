#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_19__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  name; } ;
struct TYPE_23__ {TYPE_2__ dobj; } ;
typedef  TYPE_3__ TypeInfo ;
struct TYPE_27__ {int remoteVersion; } ;
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_20__ {int /*<<< orphan*/  dump; int /*<<< orphan*/  name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_26__ {TYPE_19__ dobj; void* casttarget; void* castsource; void* castmethod; void* castcontext; void* castfunc; } ;
struct TYPE_25__ {int /*<<< orphan*/  data; } ;
struct TYPE_24__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ PQExpBufferData ;
typedef  TYPE_5__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_6__ CastInfo ;
typedef  TYPE_7__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_19__*) ; 
 int /*<<< orphan*/  DO_CAST ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void** FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 void* FUNC8 (void**) ; 
 TYPE_5__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 TYPE_3__* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,TYPE_7__*) ; 

CastInfo *
FUNC15(Archive *fout, int *numCasts)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query = FUNC9();
	CastInfo   *castinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_castsource;
	int			i_casttarget;
	int			i_castfunc;
	int			i_castcontext;
	int			i_castmethod;

	if (fout->remoteVersion >= 80400)
	{
		FUNC7(query, "SELECT tableoid, oid, "
							 "castsource, casttarget, castfunc, castcontext, "
							 "castmethod "
							 "FROM pg_cast ORDER BY 3,4");
	}
	else
	{
		FUNC7(query, "SELECT tableoid, oid, "
							 "castsource, casttarget, castfunc, castcontext, "
							 "CASE WHEN castfunc = 0 THEN 'b' ELSE 'f' END AS castmethod "
							 "FROM pg_cast ORDER BY 3,4");
	}

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);

	*numCasts = ntups;

	castinfo = (CastInfo *) FUNC13(ntups * sizeof(CastInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_castsource = FUNC3(res, "castsource");
	i_casttarget = FUNC3(res, "casttarget");
	i_castfunc = FUNC3(res, "castfunc");
	i_castcontext = FUNC3(res, "castcontext");
	i_castmethod = FUNC3(res, "castmethod");

	for (i = 0; i < ntups; i++)
	{
		PQExpBufferData namebuf;
		TypeInfo   *sTypeInfo;
		TypeInfo   *tTypeInfo;

		castinfo[i].dobj.objType = DO_CAST;
		castinfo[i].dobj.catId.tableoid = FUNC8(FUNC4(res, i, i_tableoid));
		castinfo[i].dobj.catId.oid = FUNC8(FUNC4(res, i, i_oid));
		FUNC0(&castinfo[i].dobj);
		castinfo[i].castsource = FUNC8(FUNC4(res, i, i_castsource));
		castinfo[i].casttarget = FUNC8(FUNC4(res, i, i_casttarget));
		castinfo[i].castfunc = FUNC8(FUNC4(res, i, i_castfunc));
		castinfo[i].castcontext = *(FUNC4(res, i, i_castcontext));
		castinfo[i].castmethod = *(FUNC4(res, i, i_castmethod));

		/*
		 * Try to name cast as concatenation of typnames.  This is only used
		 * for purposes of sorting.  If we fail to find either type, the name
		 * will be an empty string.
		 */
		FUNC12(&namebuf);
		sTypeInfo = FUNC11(castinfo[i].castsource);
		tTypeInfo = FUNC11(castinfo[i].casttarget);
		if (sTypeInfo && tTypeInfo)
			FUNC6(&namebuf, "%s %s",
							  sTypeInfo->dobj.name, tTypeInfo->dobj.name);
		castinfo[i].dobj.name = namebuf.data;

		/* Decide whether we want to dump it */
		FUNC14(&(castinfo[i]), fout);

		/* Casts do not currently have ACLs. */
		castinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC10(query);

	return castinfo;
}