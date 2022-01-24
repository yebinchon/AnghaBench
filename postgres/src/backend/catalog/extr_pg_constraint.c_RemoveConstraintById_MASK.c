#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ relchecks; } ;
struct TYPE_12__ {scalar_t__ contype; int /*<<< orphan*/  contypid; int /*<<< orphan*/  conrelid; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_constraint ;
typedef  TYPE_3__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 scalar_t__ CONSTRAINT_CHECK ; 
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ConstraintRelationId ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(Oid conId)
{
	Relation	conDesc;
	HeapTuple	tup;
	Form_pg_constraint con;

	conDesc = FUNC13(ConstraintRelationId, RowExclusiveLock);

	tup = FUNC8(CONSTROID, FUNC4(conId));
	if (!FUNC3(tup)) /* should not happen */
		FUNC10(ERROR, "cache lookup failed for constraint %u", conId);
	con = (Form_pg_constraint) FUNC2(tup);

	/*
	 * Special processing depending on what the constraint is for.
	 */
	if (FUNC5(con->conrelid))
	{
		Relation	rel;

		/*
		 * If the constraint is for a relation, open and exclusive-lock the
		 * relation it's for.
		 */
		rel = FUNC13(con->conrelid, AccessExclusiveLock);

		/*
		 * We need to update the relchecks count if it is a check constraint
		 * being dropped.  This update will force backends to rebuild relcache
		 * entries when we commit.
		 */
		if (con->contype == CONSTRAINT_CHECK)
		{
			Relation	pgrel;
			HeapTuple	relTup;
			Form_pg_class classForm;

			pgrel = FUNC13(RelationRelationId, RowExclusiveLock);
			relTup = FUNC9(RELOID,
										 FUNC4(con->conrelid));
			if (!FUNC3(relTup))
				FUNC10(ERROR, "cache lookup failed for relation %u",
					 con->conrelid);
			classForm = (Form_pg_class) FUNC2(relTup);

			if (classForm->relchecks == 0)	/* should not happen */
				FUNC10(ERROR, "relation \"%s\" has relchecks = 0",
					 FUNC6(rel));
			classForm->relchecks--;

			FUNC1(pgrel, &relTup->t_self, relTup);

			FUNC11(relTup);

			FUNC12(pgrel, RowExclusiveLock);
		}

		/* Keep lock on constraint's rel until end of xact */
		FUNC12(rel, NoLock);
	}
	else if (FUNC5(con->contypid))
	{
		/*
		 * XXX for now, do nothing special when dropping a domain constraint
		 *
		 * Probably there should be some form of locking on the domain type,
		 * but we have no such concept at the moment.
		 */
	}
	else
		FUNC10(ERROR, "constraint %u is not of a known type", conId);

	/* Fry the constraint itself */
	FUNC0(conDesc, &tup->t_self);

	/* Clean up */
	FUNC7(tup);
	FUNC12(conDesc, RowExclusiveLock);
}