#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char relkind; int /*<<< orphan*/  relname; scalar_t__ reloftype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char RELKIND_COMPOSITE_TYPE ; 
 char RELKIND_FOREIGN_TABLE ; 
 char RELKIND_INDEX ; 
 char RELKIND_MATVIEW ; 
 char RELKIND_PARTITIONED_INDEX ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 char RELKIND_VIEW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(Oid myrelid, Form_pg_class classform, bool recursing)
{
	char		relkind = classform->relkind;

	if (classform->reloftype && !recursing)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC6("cannot rename column of typed table")));

	/*
	 * Renaming the columns of sequences or toast tables doesn't actually
	 * break anything from the system's point of view, since internal
	 * references are by attnum.  But it doesn't seem right to allow users to
	 * change names that are hardcoded into the system, hence the following
	 * restriction.
	 */
	if (relkind != RELKIND_RELATION &&
		relkind != RELKIND_VIEW &&
		relkind != RELKIND_MATVIEW &&
		relkind != RELKIND_COMPOSITE_TYPE &&
		relkind != RELKIND_INDEX &&
		relkind != RELKIND_PARTITIONED_INDEX &&
		relkind != RELKIND_FOREIGN_TABLE &&
		relkind != RELKIND_PARTITIONED_TABLE)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC6("\"%s\" is not a table, view, materialized view, composite type, index, or foreign table",
						FUNC2(classform->relname))));

	/*
	 * permissions checking.  only the owner of a class can change its schema.
	 */
	if (!FUNC9(myrelid, FUNC0()))
		FUNC3(ACLCHECK_NOT_OWNER, FUNC8(FUNC7(myrelid)),
					   FUNC2(classform->relname));
	if (!allowSystemTableMods && FUNC1(myrelid, classform))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC6("permission denied: \"%s\" is a system catalog",
						FUNC2(classform->relname))));
}