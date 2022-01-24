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
struct TYPE_16__ {TYPE_5__ dobj; void* prslextype; void* prsheadline; void* prsend; void* prstoken; void* prsstart; } ;
typedef  TYPE_2__ TSParserInfo ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_4__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  DO_TSPARSER ; 
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

TSParserInfo *
FUNC14(Archive *fout, int *numTSParsers)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	TSParserInfo *prsinfo;
	int			i_tableoid;
	int			i_oid;
	int			i_prsname;
	int			i_prsnamespace;
	int			i_prsstart;
	int			i_prstoken;
	int			i_prsend;
	int			i_prsheadline;
	int			i_prslextype;

	/* Before 8.3, there is no built-in text search support */
	if (fout->remoteVersion < 80300)
	{
		*numTSParsers = 0;
		return NULL;
	}

	query = FUNC8();

	/*
	 * find all text search objects, including builtin ones; we filter out
	 * system-defined objects at dump-out time.
	 */

	FUNC6(query, "SELECT tableoid, oid, prsname, prsnamespace, "
						 "prsstart::oid, prstoken::oid, "
						 "prsend::oid, prsheadline::oid, prslextype::oid "
						 "FROM pg_ts_parser");

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);
	*numTSParsers = ntups;

	prsinfo = (TSParserInfo *) FUNC11(ntups * sizeof(TSParserInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_prsname = FUNC3(res, "prsname");
	i_prsnamespace = FUNC3(res, "prsnamespace");
	i_prsstart = FUNC3(res, "prsstart");
	i_prstoken = FUNC3(res, "prstoken");
	i_prsend = FUNC3(res, "prsend");
	i_prsheadline = FUNC3(res, "prsheadline");
	i_prslextype = FUNC3(res, "prslextype");

	for (i = 0; i < ntups; i++)
	{
		prsinfo[i].dobj.objType = DO_TSPARSER;
		prsinfo[i].dobj.catId.tableoid = FUNC7(FUNC4(res, i, i_tableoid));
		prsinfo[i].dobj.catId.oid = FUNC7(FUNC4(res, i, i_oid));
		FUNC0(&prsinfo[i].dobj);
		prsinfo[i].dobj.name = FUNC12(FUNC4(res, i, i_prsname));
		prsinfo[i].dobj.namespace =
			FUNC10(fout,
						  FUNC7(FUNC4(res, i, i_prsnamespace)));
		prsinfo[i].prsstart = FUNC7(FUNC4(res, i, i_prsstart));
		prsinfo[i].prstoken = FUNC7(FUNC4(res, i, i_prstoken));
		prsinfo[i].prsend = FUNC7(FUNC4(res, i, i_prsend));
		prsinfo[i].prsheadline = FUNC7(FUNC4(res, i, i_prsheadline));
		prsinfo[i].prslextype = FUNC7(FUNC4(res, i, i_prslextype));

		/* Decide whether we want to dump it */
		FUNC13(&(prsinfo[i].dobj), fout);

		/* Text Search Parsers do not currently have ACLs. */
		prsinfo[i].dobj.dump &= ~DUMP_COMPONENT_ACL;
	}

	FUNC2(res);

	FUNC9(query);

	return prsinfo;
}