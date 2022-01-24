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
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {int /*<<< orphan*/  t_len; scalar_t__ t_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  tdtypmod; int /*<<< orphan*/  tdtypeid; } ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 

Datum
FUNC8(HeapTuple tuple, TupleDesc tupleDesc)
{
	HeapTupleHeader td;

	/*
	 * If the tuple contains any external TOAST pointers, we have to inline
	 * those fields to meet the conventions for composite-type Datums.
	 */
	if (FUNC0(tuple))
		return FUNC7(tuple->t_data,
											tuple->t_len,
											tupleDesc);

	/*
	 * Fast path for easy case: just make a palloc'd copy and insert the
	 * correct composite-Datum header fields (since those may not be set if
	 * the given tuple came from disk, rather than from heap_form_tuple).
	 */
	td = (HeapTupleHeader) FUNC6(tuple->t_len);
	FUNC5((char *) td, (char *) tuple->t_data, tuple->t_len);

	FUNC1(td, tuple->t_len);
	FUNC3(td, tupleDesc->tdtypeid);
	FUNC2(td, tupleDesc->tdtypmod);

	return FUNC4(td);
}