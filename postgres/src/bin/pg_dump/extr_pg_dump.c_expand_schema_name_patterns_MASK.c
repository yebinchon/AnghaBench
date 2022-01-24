#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_1__* head; } ;
struct TYPE_10__ {int /*<<< orphan*/  val; struct TYPE_10__* next; } ;
typedef  TYPE_1__ SimpleStringListCell ;
typedef  TYPE_2__ SimpleStringList ;
typedef  int /*<<< orphan*/  SimpleOidList ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(Archive *fout,
							SimpleStringList *patterns,
							SimpleOidList *oids,
							bool strict_names)
{
	PQExpBuffer query;
	PGresult   *res;
	SimpleStringListCell *cell;
	int			i;

	if (patterns->head == NULL)
		return;					/* nothing to do */

	query = FUNC7();

	/*
	 * The loop below runs multiple SELECTs might sometimes result in
	 * duplicate entries in the OID list, but we don't care.
	 */

	for (cell = patterns->head; cell; cell = cell->next)
	{
		FUNC5(query,
							 "SELECT oid FROM pg_catalog.pg_namespace n\n");
		FUNC10(FUNC1(fout), query, cell->val, false,
							  false, NULL, "n.nspname", NULL, NULL);

		res = FUNC0(fout, query->data, PGRES_TUPLES_OK);
		if (strict_names && FUNC4(res) == 0)
			FUNC9("no matching schemas were found for pattern \"%s\"", cell->val);

		for (i = 0; i < FUNC4(res); i++)
		{
			FUNC12(oids, FUNC6(FUNC3(res, i, 0)));
		}

		FUNC2(res);
		FUNC11(query);
	}

	FUNC8(query);
}