#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ prorettype; } ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ OPAQUEOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Oid funcOid, Oid newRetType)
{
	Relation	pg_proc_rel;
	HeapTuple	tup;
	Form_pg_proc procForm;
	ObjectAddress func_address;
	ObjectAddress type_address;

	pg_proc_rel = FUNC9(ProcedureRelationId, RowExclusiveLock);

	tup = FUNC5(PROCOID, FUNC4(funcOid));
	if (!FUNC2(tup)) /* should not happen */
		FUNC6(ERROR, "cache lookup failed for function %u", funcOid);
	procForm = (Form_pg_proc) FUNC1(tup);

	if (procForm->prorettype != OPAQUEOID)	/* caller messed up */
		FUNC6(ERROR, "function %u doesn't return OPAQUE", funcOid);

	/* okay to overwrite copied tuple */
	procForm->prorettype = newRetType;

	/* update the catalog and its indexes */
	FUNC0(pg_proc_rel, &tup->t_self, tup);

	FUNC8(pg_proc_rel, RowExclusiveLock);

	/*
	 * Also update the dependency to the new type. Opaque is a pinned type, so
	 * there is no old dependency record for it that we would need to remove.
	 */
	FUNC3(type_address, TypeRelationId, newRetType);
	FUNC3(func_address, ProcedureRelationId, funcOid);
	FUNC7(&func_address, &type_address, DEPENDENCY_NORMAL);
}