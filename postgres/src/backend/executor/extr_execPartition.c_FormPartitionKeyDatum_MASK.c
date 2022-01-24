#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_8__ {int /*<<< orphan*/ * ecxt_scantuple; } ;
struct TYPE_7__ {scalar_t__ keystate; TYPE_1__* key; } ;
struct TYPE_6__ {scalar_t__ partexprs; int partnatts; scalar_t__* partattrs; } ;
typedef  TYPE_2__* PartitionDispatch ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int*) ; 

__attribute__((used)) static void
FUNC9(PartitionDispatch pd,
					  TupleTableSlot *slot,
					  EState *estate,
					  Datum *values,
					  bool *isnull)
{
	ListCell   *partexpr_item;
	int			i;

	if (pd->key->partexprs != NIL && pd->keystate == NIL)
	{
		/* Check caller has set up context correctly */
		FUNC0(estate != NULL &&
			   FUNC3(estate)->ecxt_scantuple == slot);

		/* First time through, set up expression evaluation state */
		pd->keystate = FUNC2(pd->key->partexprs, estate);
	}

	partexpr_item = FUNC6(pd->keystate);
	for (i = 0; i < pd->key->partnatts; i++)
	{
		AttrNumber	keycol = pd->key->partattrs[i];
		Datum		datum;
		bool		isNull;

		if (keycol != 0)
		{
			/* Plain column; get the value directly from the heap tuple */
			datum = FUNC8(slot, keycol, &isNull);
		}
		else
		{
			/* Expression; need to evaluate it */
			if (partexpr_item == NULL)
				FUNC4(ERROR, "wrong number of partition key expressions");
			datum = FUNC1((ExprState *) FUNC5(partexpr_item),
											  FUNC3(estate),
											  &isNull);
			partexpr_item = FUNC7(pd->keystate, partexpr_item);
		}
		values[i] = datum;
		isnull[i] = isNull;
	}

	if (partexpr_item != NULL)
		FUNC4(ERROR, "wrong number of partition key expressions");
}