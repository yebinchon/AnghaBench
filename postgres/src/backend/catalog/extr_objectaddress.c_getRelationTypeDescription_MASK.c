#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_2__ {int relkind; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  RELKIND_COMPOSITE_TYPE 137 
#define  RELKIND_FOREIGN_TABLE 136 
#define  RELKIND_INDEX 135 
#define  RELKIND_MATVIEW 134 
#define  RELKIND_PARTITIONED_INDEX 133 
#define  RELKIND_PARTITIONED_TABLE 132 
#define  RELKIND_RELATION 131 
#define  RELKIND_SEQUENCE 130 
#define  RELKIND_TOASTVALUE 129 
#define  RELKIND_VIEW 128 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(StringInfo buffer, Oid relid, int32 objectSubId)
{
	HeapTuple	relTup;
	Form_pg_class relForm;

	relTup = FUNC4(RELOID,
							 FUNC2(relid));
	if (!FUNC1(relTup))
		FUNC6(ERROR, "cache lookup failed for relation %u", relid);
	relForm = (Form_pg_class) FUNC0(relTup);

	switch (relForm->relkind)
	{
		case RELKIND_RELATION:
		case RELKIND_PARTITIONED_TABLE:
			FUNC5(buffer, "table");
			break;
		case RELKIND_INDEX:
		case RELKIND_PARTITIONED_INDEX:
			FUNC5(buffer, "index");
			break;
		case RELKIND_SEQUENCE:
			FUNC5(buffer, "sequence");
			break;
		case RELKIND_TOASTVALUE:
			FUNC5(buffer, "toast table");
			break;
		case RELKIND_VIEW:
			FUNC5(buffer, "view");
			break;
		case RELKIND_MATVIEW:
			FUNC5(buffer, "materialized view");
			break;
		case RELKIND_COMPOSITE_TYPE:
			FUNC5(buffer, "composite type");
			break;
		case RELKIND_FOREIGN_TABLE:
			FUNC5(buffer, "foreign table");
			break;
		default:
			/* shouldn't get here */
			FUNC5(buffer, "relation");
			break;
	}

	if (objectSubId != 0)
		FUNC5(buffer, " column");

	FUNC3(relTup);
}