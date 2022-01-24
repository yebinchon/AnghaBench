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
struct TYPE_8__ {scalar_t__ oprcom; scalar_t__ oprnegate; } ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 void* InvalidOid ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  OperatorRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(Oid baseId, Oid commId, Oid negId, bool isDelete)
{
	Relation	pg_operator_desc;
	HeapTuple	tup;

	/*
	 * If we're making an operator into its own commutator, then we need a
	 * command-counter increment here, since we've just inserted the tuple
	 * we're about to update.  But when we're dropping an operator, we can
	 * skip this because we're at the beginning of the command.
	 */
	if (!isDelete)
		FUNC1();

	/* Open the relation. */
	pg_operator_desc = FUNC8(OperatorRelationId, RowExclusiveLock);

	/* Get a writable copy of the commutator's tuple. */
	if (FUNC5(commId))
		tup = FUNC6(OPEROID, FUNC4(commId));
	else
		tup = NULL;

	/* Update the commutator's tuple if need be. */
	if (FUNC3(tup))
	{
		Form_pg_operator t = (Form_pg_operator) FUNC2(tup);
		bool		update_commutator = false;

		/*
		 * Out of due caution, we only change the commutator's oprcom field if
		 * it has the exact value we expected: InvalidOid when creating an
		 * operator, or baseId when dropping one.
		 */
		if (isDelete && t->oprcom == baseId)
		{
			t->oprcom = InvalidOid;
			update_commutator = true;
		}
		else if (!isDelete && !FUNC5(t->oprcom))
		{
			t->oprcom = baseId;
			update_commutator = true;
		}

		/* If any columns were found to need modification, update tuple. */
		if (update_commutator)
		{
			FUNC0(pg_operator_desc, &tup->t_self, tup);

			/*
			 * Do CCI to make the updated tuple visible.  We must do this in
			 * case the commutator is also the negator.  (Which would be a
			 * logic error on the operator definer's part, but that's not a
			 * good reason to fail here.)  We would need a CCI anyway in the
			 * deletion case for a self-commutator with no negator.
			 */
			FUNC1();
		}
	}

	/*
	 * Similarly find and update the negator, if any.
	 */
	if (FUNC5(negId))
		tup = FUNC6(OPEROID, FUNC4(negId));
	else
		tup = NULL;

	if (FUNC3(tup))
	{
		Form_pg_operator t = (Form_pg_operator) FUNC2(tup);
		bool		update_negator = false;

		/*
		 * Out of due caution, we only change the negator's oprnegate field if
		 * it has the exact value we expected: InvalidOid when creating an
		 * operator, or baseId when dropping one.
		 */
		if (isDelete && t->oprnegate == baseId)
		{
			t->oprnegate = InvalidOid;
			update_negator = true;
		}
		else if (!isDelete && !FUNC5(t->oprnegate))
		{
			t->oprnegate = baseId;
			update_negator = true;
		}

		/* If any columns were found to need modification, update tuple. */
		if (update_negator)
		{
			FUNC0(pg_operator_desc, &tup->t_self, tup);

			/*
			 * In the deletion case, do CCI to make the updated tuple visible.
			 * We must do this in case the operator is its own negator. (Which
			 * would be a logic error on the operator definer's part, but
			 * that's not a good reason to fail here.)
			 */
			if (isDelete)
				FUNC1();
		}
	}

	/* Close relation and release catalog lock. */
	FUNC7(pg_operator_desc, RowExclusiveLock);
}