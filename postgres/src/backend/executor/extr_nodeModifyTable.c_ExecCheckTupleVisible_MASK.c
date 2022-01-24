#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_3__ {int /*<<< orphan*/  es_snapshot; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MinTransactionIdAttributeNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(EState *estate,
					  Relation rel,
					  TupleTableSlot *slot)
{
	if (!FUNC2())
		return;

	if (!FUNC8(rel, slot, estate->es_snapshot))
	{
		Datum		xminDatum;
		TransactionId xmin;
		bool		isnull;

		xminDatum = FUNC7(slot, MinTransactionIdAttributeNumber, &isnull);
		FUNC0(!isnull);
		xmin = FUNC1(xminDatum);

		/*
		 * We should not raise a serialization failure if the conflict is
		 * against a tuple inserted by our own transaction, even if it's not
		 * visible to our snapshot.  (This would happen, for example, if
		 * conflicting keys are proposed for insertion in a single command.)
		 */
		if (!FUNC3(xmin))
			FUNC4(ERROR,
					(FUNC5(ERRCODE_T_R_SERIALIZATION_FAILURE),
					 FUNC6("could not serialize access due to concurrent update")));
	}
}