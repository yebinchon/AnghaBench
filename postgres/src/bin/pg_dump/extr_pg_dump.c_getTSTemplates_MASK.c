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
struct TYPE_19__ {int /*<<< orphan*/  dump; int /*<<< orphan*/  namespace; int /*<<< orphan*/  name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_18__ {int remoteVersion; } ;
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
struct TYPE_16__ {TYPE_5__ dobj; void* tmpllexize; void* tmplinit; } ;
typedef  TYPE_2__ TSTemplateInfo ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DO_TSTEMPLATE ; 
 int /*<<< orphan*/  DUMP_COMPONENT_ACL ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,void*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_4__*) ; 

TSTemplateInfo *
FUNC14(Archive *fout, int *numTSTemplates)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	TSTemplateInfo *tmplinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_tmplname;
	int			i_tmplnamespace;
	int			i_tmplinit;
	int			i_tmpllexize;

	/* Before 8.3, there is no built-in text search support */
	if (fout->remoteVersion < 80300)
	{
		*numTSTemplates = 0;
		return NULL;
	}

	query = FUNC8();

	FUNC6(query, "SELECT tableoid, oid, tmplname, "
						 "tmplnamespace, tmplinit::oid, tmpllexize::oid "
						 "FROM pg_ts_template");

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numTSTemplates = ntups;

	tmplinfo = (TSTemplateInfo *) FUNC11(ntups * sizeof(TSTemplateInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_tmplname = FUNC3(res, "tmplname");
	i_tmplnamespace = FUNC3(res, "tmplnamespace");
	i_tmplinit = FUNC3(res, "tmplinit");
	i_tmpllexize = FUNC3(res, "tmpllexize");

	for (i = 0; i < ntups; i++)
	{
		tmplinfo[i].dobj.objType = DO_TSTEMPLATE;
		tmplinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		tmplinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&tmplinfo[i].dobj);
		tmplinfo[i].dobj.name = FUNC12(FUNC4(res, i, i_tmplname));
		tmplinfo[i].dobj.namespace =
			FUNC10(fout,
						  FUNC7(FUNC4(res, i, i_tmplnamespace)));
		tmplinfo[i].tmplinit = FUNC7(FUNC4(res, i, i_tmplinit));
		tmplinfo[i].tmpllexize = FUNC7(FUNC4(res, i, i_tmpllexize));

		/* Decide whether we want to dump it */
		FUNC13(&(tmplinfo[i].dobj), fout);

		/* Text Search Templates do not currently have ACLs. */
		tmplinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC9(query);

	return tmplinfo;
}