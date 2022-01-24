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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  OperatorRelationId ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(Oid operOid)
{
	Relation	relation;
	HeapTuple	tup;
	Form_pg_operator op;

	relation = FUNC10(OperatorRelationId, RowExclusiveLock);

	tup = FUNC7(OPEROID, FUNC3(operOid));
	if (!FUNC2(tup)) /* should not happen */
		FUNC8(ERROR, "cache lookup failed for operator %u", operOid);
	op = (Form_pg_operator) FUNC1(tup);

	/*
	 * Reset links from commutator and negator, if any.  In case of a
	 * self-commutator or self-negator, this means we have to re-fetch the
	 * updated tuple.  (We could optimize away updates on the tuple we're
	 * about to drop, but it doesn't seem worth convoluting the logic for.)
	 */
	if (FUNC4(op->oprcom) || FUNC4(op->oprnegate))
	{
		FUNC5(operOid, op->oprcom, op->oprnegate, true);
		if (operOid == op->oprcom || operOid == op->oprnegate)
		{
			FUNC6(tup);
			tup = FUNC7(OPEROID, FUNC3(operOid));
			if (!FUNC2(tup)) /* should not happen */
				FUNC8(ERROR, "cache lookup failed for operator %u", operOid);
		}
	}

	FUNC0(relation, &tup->t_self);

	FUNC6(tup);

	FUNC9(relation, RowExclusiveLock);
}