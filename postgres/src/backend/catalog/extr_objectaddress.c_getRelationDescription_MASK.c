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
struct TYPE_2__ {int relkind; int /*<<< orphan*/  relname; int /*<<< orphan*/  relnamespace; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
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
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(StringInfo buffer, Oid relid)
{
	HeapTuple	relTup;
	Form_pg_class relForm;
	char	   *nspname;
	char	   *relname;

	relTup = FUNC6(RELOID,
							 FUNC3(relid));
	if (!FUNC1(relTup))
		FUNC9(ERROR, "cache lookup failed for relation %u", relid);
	relForm = (Form_pg_class) FUNC0(relTup);

	/* Qualify the name if not visible in search path */
	if (FUNC4(relid))
		nspname = NULL;
	else
		nspname = FUNC10(relForm->relnamespace);

	relname = FUNC11(nspname, FUNC2(relForm->relname));

	switch (relForm->relkind)
	{
		case RELKIND_RELATION:
		case RELKIND_PARTITIONED_TABLE:
			FUNC8(buffer, FUNC7("table %s"),
							 relname);
			break;
		case RELKIND_INDEX:
		case RELKIND_PARTITIONED_INDEX:
			FUNC8(buffer, FUNC7("index %s"),
							 relname);
			break;
		case RELKIND_SEQUENCE:
			FUNC8(buffer, FUNC7("sequence %s"),
							 relname);
			break;
		case RELKIND_TOASTVALUE:
			FUNC8(buffer, FUNC7("toast table %s"),
							 relname);
			break;
		case RELKIND_VIEW:
			FUNC8(buffer, FUNC7("view %s"),
							 relname);
			break;
		case RELKIND_MATVIEW:
			FUNC8(buffer, FUNC7("materialized view %s"),
							 relname);
			break;
		case RELKIND_COMPOSITE_TYPE:
			FUNC8(buffer, FUNC7("composite type %s"),
							 relname);
			break;
		case RELKIND_FOREIGN_TABLE:
			FUNC8(buffer, FUNC7("foreign table %s"),
							 relname);
			break;
		default:
			/* shouldn't get here */
			FUNC8(buffer, FUNC7("relation %s"),
							 relname);
			break;
	}

	FUNC5(relTup);
}