#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * RefetchForeignRow; } ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int relkind; } ;
typedef  int /*<<< orphan*/  RowMarkType ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__ FdwRoutine ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int) ; 
#define  RELKIND_FOREIGN_TABLE 134 
#define  RELKIND_MATVIEW 133 
#define  RELKIND_PARTITIONED_TABLE 132 
#define  RELKIND_RELATION 131 
#define  RELKIND_SEQUENCE 130 
#define  RELKIND_TOASTVALUE 129 
#define  RELKIND_VIEW 128 
 int /*<<< orphan*/  ROW_MARK_REFERENCE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(Relation rel, RowMarkType markType)
{
	FdwRoutine *fdwroutine;

	switch (rel->rd_rel->relkind)
	{
		case RELKIND_RELATION:
		case RELKIND_PARTITIONED_TABLE:
			/* OK */
			break;
		case RELKIND_SEQUENCE:
			/* Must disallow this because we don't vacuum sequences */
			FUNC2(ERROR,
					(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC4("cannot lock rows in sequence \"%s\"",
							FUNC1(rel))));
			break;
		case RELKIND_TOASTVALUE:
			/* We could allow this, but there seems no good reason to */
			FUNC2(ERROR,
					(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC4("cannot lock rows in TOAST relation \"%s\"",
							FUNC1(rel))));
			break;
		case RELKIND_VIEW:
			/* Should not get here; planner should have expanded the view */
			FUNC2(ERROR,
					(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC4("cannot lock rows in view \"%s\"",
							FUNC1(rel))));
			break;
		case RELKIND_MATVIEW:
			/* Allow referencing a matview, but not actual locking clauses */
			if (markType != ROW_MARK_REFERENCE)
				FUNC2(ERROR,
						(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC4("cannot lock rows in materialized view \"%s\"",
								FUNC1(rel))));
			break;
		case RELKIND_FOREIGN_TABLE:
			/* Okay only if the FDW supports it */
			fdwroutine = FUNC0(rel, false);
			if (fdwroutine->RefetchForeignRow == NULL)
				FUNC2(ERROR,
						(FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
						 FUNC4("cannot lock rows in foreign table \"%s\"",
								FUNC1(rel))));
			break;
		default:
			FUNC2(ERROR,
					(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC4("cannot lock rows in relation \"%s\"",
							FUNC1(rel))));
			break;
	}
}