#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlotOps ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

TupleTableSlot *
FUNC4(Relation relation, List **reglist)
{
	const TupleTableSlotOps *tts_cb;
	TupleTableSlot *slot;

	tts_cb = FUNC3(relation);
	slot = FUNC0(FUNC1(relation), tts_cb);

	if (reglist)
		*reglist = FUNC2(*reglist, slot);

	return slot;
}