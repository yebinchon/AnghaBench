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
struct TYPE_16__ {TYPE_5__ dobj; int /*<<< orphan*/ * dictinitoption; void* dicttemplate; void* rolname; } ;
typedef  TYPE_2__ TSDictInfo ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DO_TSDICT ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,void*) ; 
 scalar_t__ FUNC12 (int) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  username_subquery ; 

TSDictInfo *
FUNC15(Archive *fout, int *numTSDicts)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	TSDictInfo *dictinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_dictname;
	int			i_dictnamespace;
	int			i_rolname;
	int			i_dicttemplate;
	int			i_dictinitoption;

	/* Before 8.3, there is no built-in text search support */
	if (fout->remoteVersion < 80300)
	{
		*numTSDicts = 0;
		return NULL;
	}

	query = FUNC9();

	FUNC7(query, "SELECT tableoid, oid, dictname, "
					  "dictnamespace, (%s dictowner) AS rolname, "
					  "dicttemplate, dictinitoption "
					  "FROM pg_ts_dict",
					  username_subquery);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC6(res);
	*numTSDicts = ntups;

	dictinfo = (TSDictInfo *) FUNC12(ntups * sizeof(TSDictInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_dictname = FUNC3(res, "dictname");
	i_dictnamespace = FUNC3(res, "dictnamespace");
	i_rolname = FUNC3(res, "rolname");
	i_dictinitoption = FUNC3(res, "dictinitoption");
	i_dicttemplate = FUNC3(res, "dicttemplate");

	for (i = 0; i < ntups; i++)
	{
		dictinfo[i].dobj.objType = DO_TSDICT;
		dictinfo[i].dobj.catId.tableoid = FUNC8(FUNC5(res, i, i_tableoid));
		dictinfo[i].dobj.catId.oid = FUNC8(FUNC5(res, i, i_oid));
		FUNC0(&dictinfo[i].dobj);
		dictinfo[i].dobj.name = FUNC13(FUNC5(res, i, i_dictname));
		dictinfo[i].dobj.namespace =
			FUNC11(fout,
						  FUNC8(FUNC5(res, i, i_dictnamespace)));
		dictinfo[i].rolname = FUNC13(FUNC5(res, i, i_rolname));
		dictinfo[i].dicttemplate = FUNC8(FUNC5(res, i, i_dicttemplate));
		if (FUNC4(res, i, i_dictinitoption))
			dictinfo[i].dictinitoption = NULL;
		else
			dictinfo[i].dictinitoption = FUNC13(FUNC5(res, i, i_dictinitoption));

		/* Decide whether we want to dump it */
		FUNC14(&(dictinfo[i].dobj), fout);

		/* Text Search Dictionaries do not currently have ACLs. */
		dictinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC10(query);

	return dictinfo;
}