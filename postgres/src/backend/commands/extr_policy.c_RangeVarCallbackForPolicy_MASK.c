#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char relkind; } ;
struct TYPE_5__ {int /*<<< orphan*/  relname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(const RangeVar *rv, Oid relid, Oid oldrelid,
						  void *arg)
{
	HeapTuple	tuple;
	Form_pg_class classform;
	char		relkind;

	tuple = FUNC6(RELOID, FUNC4(relid));
	if (!FUNC2(tuple))
		return;

	classform = (Form_pg_class) FUNC0(tuple);
	relkind = classform->relkind;

	/* Must own relation. */
	if (!FUNC13(relid, FUNC1()))
		FUNC7(ACLCHECK_NOT_OWNER, FUNC12(FUNC11(relid)), rv->relname);

	/* No system table modifications unless explicitly allowed. */
	if (!allowSystemTableMods && FUNC3(relid, classform))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC10("permission denied: \"%s\" is a system catalog",
						rv->relname)));

	/* Relation type MUST be a table. */
	if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE)
		FUNC8(ERROR,
				(FUNC9(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC10("\"%s\" is not a table", rv->relname)));

	FUNC5(tuple);
}