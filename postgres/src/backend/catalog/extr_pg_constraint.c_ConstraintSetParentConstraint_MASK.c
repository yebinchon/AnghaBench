#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ coninhcount; scalar_t__ conparentid; int conislocal; } ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_constraint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  DEPENDENCY_PARTITION_PRI ; 
 int /*<<< orphan*/  DEPENDENCY_PARTITION_SEC ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15(Oid childConstrId,
							  Oid parentConstrId,
							  Oid childTableId)
{
	Relation	constrRel;
	Form_pg_constraint constrForm;
	HeapTuple	tuple,
				newtup;
	ObjectAddress depender;
	ObjectAddress referenced;

	constrRel = FUNC14(ConstraintRelationId, RowExclusiveLock);
	tuple = FUNC8(CONSTROID, FUNC5(childConstrId));
	if (!FUNC3(tuple))
		FUNC10(ERROR, "cache lookup failed for constraint %u", childConstrId);
	newtup = FUNC11(tuple);
	constrForm = (Form_pg_constraint) FUNC2(newtup);
	if (FUNC6(parentConstrId))
	{
		/* don't allow setting parent for a constraint that already has one */
		FUNC0(constrForm->coninhcount == 0);
		if (constrForm->conparentid != InvalidOid)
			FUNC10(ERROR, "constraint %u already has a parent constraint",
				 childConstrId);

		constrForm->conislocal = false;
		constrForm->coninhcount++;
		constrForm->conparentid = parentConstrId;

		FUNC1(constrRel, &tuple->t_self, newtup);

		FUNC4(depender, ConstraintRelationId, childConstrId);

		FUNC4(referenced, ConstraintRelationId, parentConstrId);
		FUNC12(&depender, &referenced, DEPENDENCY_PARTITION_PRI);

		FUNC4(referenced, RelationRelationId, childTableId);
		FUNC12(&depender, &referenced, DEPENDENCY_PARTITION_SEC);
	}
	else
	{
		constrForm->coninhcount--;
		constrForm->conislocal = true;
		constrForm->conparentid = InvalidOid;

		/* Make sure there's no further inheritance. */
		FUNC0(constrForm->coninhcount == 0);

		FUNC1(constrRel, &tuple->t_self, newtup);

		FUNC9(ConstraintRelationId, childConstrId,
										ConstraintRelationId,
										DEPENDENCY_PARTITION_PRI);
		FUNC9(ConstraintRelationId, childConstrId,
										RelationRelationId,
										DEPENDENCY_PARTITION_SEC);
	}

	FUNC7(tuple);
	FUNC13(constrRel, RowExclusiveLock);
}