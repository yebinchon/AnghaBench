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
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int relkind; } ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int ATT_COMPOSITE_TYPE ; 
 int ATT_FOREIGN_TABLE ; 
 int ATT_INDEX ; 
 int ATT_MATVIEW ; 
 int ATT_PARTITIONED_INDEX ; 
 int ATT_TABLE ; 
 int ATT_VIEW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
#define  RELKIND_COMPOSITE_TYPE 135 
#define  RELKIND_FOREIGN_TABLE 134 
#define  RELKIND_INDEX 133 
#define  RELKIND_MATVIEW 132 
#define  RELKIND_PARTITIONED_INDEX 131 
#define  RELKIND_PARTITIONED_TABLE 130 
#define  RELKIND_RELATION 129 
#define  RELKIND_VIEW 128 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(Relation rel, int allowed_targets)
{
	int			actual_target;

	switch (rel->rd_rel->relkind)
	{
		case RELKIND_RELATION:
		case RELKIND_PARTITIONED_TABLE:
			actual_target = ATT_TABLE;
			break;
		case RELKIND_VIEW:
			actual_target = ATT_VIEW;
			break;
		case RELKIND_MATVIEW:
			actual_target = ATT_MATVIEW;
			break;
		case RELKIND_INDEX:
			actual_target = ATT_INDEX;
			break;
		case RELKIND_PARTITIONED_INDEX:
			actual_target = ATT_PARTITIONED_INDEX;
			break;
		case RELKIND_COMPOSITE_TYPE:
			actual_target = ATT_COMPOSITE_TYPE;
			break;
		case RELKIND_FOREIGN_TABLE:
			actual_target = ATT_FOREIGN_TABLE;
			break;
		default:
			actual_target = 0;
			break;
	}

	/* Wrong target type? */
	if ((actual_target & allowed_targets) == 0)
		FUNC0(rel, allowed_targets);

	/* Permissions checks */
	if (!FUNC10(FUNC4(rel), FUNC1()))
		FUNC5(ACLCHECK_NOT_OWNER, FUNC9(rel->rd_rel->relkind),
					   FUNC3(rel));

	if (!allowSystemTableMods && FUNC2(rel))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC8("permission denied: \"%s\" is a system catalog",
						FUNC3(rel))));
}