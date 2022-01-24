#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
struct TYPE_13__ {TYPE_1__* head; } ;
struct TYPE_12__ {int /*<<< orphan*/  val; struct TYPE_12__* next; } ;
typedef  TYPE_1__ SimpleStringListCell ;
typedef  TYPE_2__ SimpleStringList ;
typedef  TYPE_3__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(PGconn *conn,
					   SimpleStringList *patterns,
					   SimpleStringList *names)
{
	PQExpBuffer query;
	PGresult   *res;

	if (patterns->head == NULL)
		return;					/* nothing to do */

	query = FUNC4();

	/*
	 * The loop below runs multiple SELECTs, which might sometimes result in
	 * duplicate entries in the name list, but we don't care, since all we're
	 * going to do is test membership of the list.
	 */

	for (SimpleStringListCell *cell = patterns->head; cell; cell = cell->next)
	{
		FUNC3(query,
							 "SELECT datname FROM pg_catalog.pg_database n\n");
		FUNC7(conn, query, cell->val, false,
							  false, NULL, "datname", NULL, NULL);

		res = FUNC6(conn, query->data);
		for (int i = 0; i < FUNC2(res); i++)
		{
			FUNC9(names, FUNC1(res, i, 0));
		}

		FUNC0(res);
		FUNC8(query);
	}

	FUNC5(query);
}