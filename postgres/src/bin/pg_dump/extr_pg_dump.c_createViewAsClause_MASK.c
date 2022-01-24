#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  oid; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; TYPE_1__ catId; } ;
struct TYPE_13__ {TYPE_2__ dobj; } ;
typedef  TYPE_3__ TableInfo ;
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_4__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PQExpBuffer
FUNC11(Archive *fout, TableInfo *tbinfo)
{
	PQExpBuffer query = FUNC8();
	PQExpBuffer result = FUNC8();
	PGresult   *res;
	int			len;

	/* Fetch the view definition */
	FUNC7(query,
					  "SELECT pg_catalog.pg_get_viewdef('%u'::pg_catalog.oid) AS viewdef",
					  tbinfo->dobj.catId.oid);

	res = FUNC1(fout, query->data, PGRES_TUPLES_OK);

	if (FUNC5(res) != 1)
	{
		if (FUNC5(res) < 1)
			FUNC10("query to obtain definition of view \"%s\" returned no data",
				  tbinfo->dobj.name);
		else
			FUNC10("query to obtain definition of view \"%s\" returned more than one definition",
				  tbinfo->dobj.name);
	}

	len = FUNC3(res, 0, 0);

	if (len == 0)
		FUNC10("definition of view \"%s\" appears to be empty (length zero)",
			  tbinfo->dobj.name);

	/* Strip off the trailing semicolon so that other things may follow. */
	FUNC0(FUNC4(res, 0, 0)[len - 1] == ';');
	FUNC6(result, FUNC4(res, 0, 0), len - 1);

	FUNC2(res);
	FUNC9(query);

	return result;
}