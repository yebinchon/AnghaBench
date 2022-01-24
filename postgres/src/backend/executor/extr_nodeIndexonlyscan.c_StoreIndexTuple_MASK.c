#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  tts_isnull; int /*<<< orphan*/  tts_values; TYPE_1__* tts_tupleDescriptor; } ;
typedef  TYPE_2__ TupleTableSlot ;
typedef  TYPE_3__* TupleDesc ;
struct TYPE_11__ {scalar_t__ natts; } ;
struct TYPE_9__ {scalar_t__ natts; } ;
typedef  int /*<<< orphan*/  IndexTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(TupleTableSlot *slot, IndexTuple itup, TupleDesc itupdesc)
{
	/*
	 * Note: we must use the tupdesc supplied by the AM in index_deform_tuple,
	 * not the slot's tupdesc, in case the latter has different datatypes
	 * (this happens for btree name_ops in particular).  They'd better have
	 * the same number of columns though, as well as being datatype-compatible
	 * which is something we can't so easily check.
	 */
	FUNC0(slot->tts_tupleDescriptor->natts == itupdesc->natts);

	FUNC1(slot);
	FUNC3(itup, itupdesc, slot->tts_values, slot->tts_isnull);
	FUNC2(slot);
}