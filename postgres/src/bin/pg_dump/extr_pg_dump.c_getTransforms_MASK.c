#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  name; } ;
struct TYPE_23__ {TYPE_2__ dobj; } ;
typedef  TYPE_3__ TypeInfo ;
struct TYPE_21__ {void* oid; void* tableoid; } ;
struct TYPE_28__ {int /*<<< orphan*/  name; TYPE_1__ catId; int /*<<< orphan*/  objType; } ;
struct TYPE_24__ {TYPE_8__ dobj; void* trflang; void* trftype; void* trftosql; void* trffromsql; } ;
typedef  TYPE_4__ TransformInfo ;
struct TYPE_27__ {int remoteVersion; } ;
struct TYPE_26__ {int /*<<< orphan*/  data; } ;
struct TYPE_25__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_5__ PQExpBufferData ;
typedef  TYPE_6__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_7__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  DO_TRANSFORM ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 TYPE_3__* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (TYPE_7__*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*,TYPE_7__*) ; 

TransformInfo *
FUNC17(Archive *fout, int *numTransforms)
{
	PGresult   *res;
	int			ntups;
	int			i;
	PQExpBuffer query;
	TransformInfo *transforminfo;
	int			i_tableoid;
	int			i_oid;
	int			i_trftype;
	int			i_trflang;
	int			i_trffromsql;
	int			i_trftosql;

	/* Transforms didn't exist pre-9.5 */
	if (fout->remoteVersion < 90500)
	{
		*numTransforms = 0;
		return NULL;
	}

	query = FUNC9();

	FUNC7(query, "SELECT tableoid, oid, "
						 "trftype, trflang, trffromsql::oid, trftosql::oid "
						 "FROM pg_transform "
						 "ORDER BY 3,4");

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	ntups = FUNC5(res);

	*numTransforms = ntups;

	transforminfo = (TransformInfo *) FUNC15(ntups * sizeof(TransformInfo));

	i_tableoid = FUNC3(res, "tableoid");
	i_oid = FUNC3(res, "oid");
	i_trftype = FUNC3(res, "trftype");
	i_trflang = FUNC3(res, "trflang");
	i_trffromsql = FUNC3(res, "trffromsql");
	i_trftosql = FUNC3(res, "trftosql");

	for (i = 0; i < ntups; i++)
	{
		PQExpBufferData namebuf;
		TypeInfo   *typeInfo;
		char	   *lanname;

		transforminfo[i].dobj.objType = DO_TRANSFORM;
		transforminfo[i].dobj.catId.tableoid = FUNC8(FUNC4(res, i, i_tableoid));
		transforminfo[i].dobj.catId.oid = FUNC8(FUNC4(res, i, i_oid));
		FUNC0(&transforminfo[i].dobj);
		transforminfo[i].trftype = FUNC8(FUNC4(res, i, i_trftype));
		transforminfo[i].trflang = FUNC8(FUNC4(res, i, i_trflang));
		transforminfo[i].trffromsql = FUNC8(FUNC4(res, i, i_trffromsql));
		transforminfo[i].trftosql = FUNC8(FUNC4(res, i, i_trftosql));

		/*
		 * Try to name transform as concatenation of type and language name.
		 * This is only used for purposes of sorting.  If we fail to find
		 * either, the name will be an empty string.
		 */
		FUNC14(&namebuf);
		typeInfo = FUNC11(transforminfo[i].trftype);
		lanname = FUNC13(fout, transforminfo[i].trflang);
		if (typeInfo && lanname)
			FUNC6(&namebuf, "%s %s",
							  typeInfo->dobj.name, lanname);
		transforminfo[i].dobj.name = namebuf.data;
		FUNC12(lanname);

		/* Decide whether we want to dump it */
		FUNC16(&(transforminfo[i].dobj), fout);
	}

	FUNC2(res);

	FUNC10(query);

	return transforminfo;
}