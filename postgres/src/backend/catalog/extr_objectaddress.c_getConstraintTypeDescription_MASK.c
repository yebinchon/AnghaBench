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
struct TYPE_2__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  contypid; int /*<<< orphan*/  conrelid; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_constraint_oid ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(StringInfo buffer, Oid constroid)
{
	Relation	constrRel;
	HeapTuple	constrTup;
	Form_pg_constraint constrForm;

	constrRel = FUNC7(ConstraintRelationId, AccessShareLock);
	constrTup = FUNC5(constrRel, Anum_pg_constraint_oid,
										  constroid);
	if (!FUNC1(constrTup))
		FUNC4(ERROR, "cache lookup failed for constraint %u", constroid);

	constrForm = (Form_pg_constraint) FUNC0(constrTup);

	if (FUNC2(constrForm->conrelid))
		FUNC3(buffer, "table constraint");
	else if (FUNC2(constrForm->contypid))
		FUNC3(buffer, "domain constraint");
	else
		FUNC4(ERROR, "invalid constraint %u", constrForm->oid);

	FUNC6(constrRel, AccessShareLock);
}