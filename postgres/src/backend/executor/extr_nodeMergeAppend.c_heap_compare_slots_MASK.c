#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_5__ {int ms_nkeys; TYPE_1__* ms_sortkeys; int /*<<< orphan*/ ** ms_slots; } ;
struct TYPE_4__ {int /*<<< orphan*/  ssup_attno; } ;
typedef  TYPE_1__* SortSupport ;
typedef  size_t SlotNumber ;
typedef  TYPE_2__ MergeAppendState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int32
FUNC6(Datum a, Datum b, void *arg)
{
	MergeAppendState *node = (MergeAppendState *) arg;
	SlotNumber	slot1 = FUNC2(a);
	SlotNumber	slot2 = FUNC2(b);

	TupleTableSlot *s1 = node->ms_slots[slot1];
	TupleTableSlot *s2 = node->ms_slots[slot2];
	int			nkey;

	FUNC1(!FUNC4(s1));
	FUNC1(!FUNC4(s2));

	for (nkey = 0; nkey < node->ms_nkeys; nkey++)
	{
		SortSupport sortKey = node->ms_sortkeys + nkey;
		AttrNumber	attno = sortKey->ssup_attno;
		Datum		datum1,
					datum2;
		bool		isNull1,
					isNull2;
		int			compare;

		datum1 = FUNC5(s1, attno, &isNull1);
		datum2 = FUNC5(s2, attno, &isNull2);

		compare = FUNC0(datum1, isNull1,
									  datum2, isNull2,
									  sortKey);
		if (compare != 0)
		{
			FUNC3(compare);
			return compare;
		}
	}
	return 0;
}