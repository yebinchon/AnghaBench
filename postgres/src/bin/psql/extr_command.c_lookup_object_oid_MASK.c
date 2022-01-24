#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  db; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int EditableObjectType ;

/* Variables and functions */
#define  EditableFunction 129 
#define  EditableView 128 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__ pset ; 
 int /*<<< orphan*/  FUNC13 (char const*,char) ; 

__attribute__((used)) static bool
FUNC14(EditableObjectType obj_type, const char *desc,
				  Oid *obj_oid)
{
	bool		result = true;
	PQExpBuffer query = FUNC9();
	PGresult   *res;

	switch (obj_type)
	{
		case EditableFunction:

			/*
			 * We have a function description, e.g. "x" or "x(int)".  Issue a
			 * query to retrieve the function's OID using a cast to regproc or
			 * regprocedure (as appropriate).
			 */
			FUNC6(query, "SELECT ");
			FUNC7(query, desc, pset.db);
			FUNC5(query, "::pg_catalog.%s::pg_catalog.oid",
							  FUNC13(desc, '(') ? "regprocedure" : "regproc");
			break;

		case EditableView:

			/*
			 * Convert view name (possibly schema-qualified) to OID.  Note:
			 * this code doesn't check if the relation is actually a view.
			 * We'll detect that in get_create_object_cmd().
			 */
			FUNC6(query, "SELECT ");
			FUNC7(query, desc, pset.db);
			FUNC6(query, "::pg_catalog.regclass::pg_catalog.oid");
			break;
	}

	if (!FUNC11(query->data))
	{
		FUNC10(query);
		return false;
	}
	res = FUNC1(pset.db, query->data);
	if (FUNC4(res) == PGRES_TUPLES_OK && FUNC3(res) == 1)
		*obj_oid = FUNC8(FUNC2(res, 0, 0));
	else
	{
		FUNC12(res);
		result = false;
	}

	FUNC0(res);
	FUNC10(query);

	return result;
}