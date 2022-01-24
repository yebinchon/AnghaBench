#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
struct TYPE_10__ {TYPE_1__* collClause; int /*<<< orphan*/  typeName; } ;
struct TYPE_9__ {int /*<<< orphan*/  pstate; } ;
struct TYPE_8__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  typcollation; } ;
struct TYPE_7__ {int /*<<< orphan*/  location; int /*<<< orphan*/  collname; } ;
typedef  TYPE_2__* Form_pg_type ;
typedef  TYPE_3__ CreateStmtContext ;
typedef  TYPE_4__ ColumnDef ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(CreateStmtContext *cxt, ColumnDef *column)
{
	/*
	 * All we really need to do here is verify that the type is valid,
	 * including any collation spec that might be present.
	 */
	Type		ctype = FUNC9(cxt->pstate, column->typeName, NULL);

	if (column->collClause)
	{
		Form_pg_type typtup = (Form_pg_type) FUNC0(ctype);

		FUNC1(cxt->pstate,
						column->collClause->collname,
						column->collClause->location);
		/* Complain if COLLATE is applied to an uncollatable type */
		if (!FUNC2(typtup->typcollation))
			FUNC4(ERROR,
					(FUNC5(ERRCODE_DATATYPE_MISMATCH),
					 FUNC6("collations are not supported by type %s",
							FUNC7(typtup->oid)),
					 FUNC8(cxt->pstate,
										column->collClause->location)));
	}

	FUNC3(ctype);
}