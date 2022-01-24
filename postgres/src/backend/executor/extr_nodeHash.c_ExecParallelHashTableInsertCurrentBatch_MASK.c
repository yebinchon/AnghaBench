#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  dsa_pointer ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_14__ {int /*<<< orphan*/ * shared; } ;
struct TYPE_17__ {int curbatch; TYPE_1__ buckets; } ;
struct TYPE_16__ {int /*<<< orphan*/  hashvalue; } ;
struct TYPE_15__ {scalar_t__ t_len; } ;
typedef  TYPE_2__* MinimalTuple ;
typedef  TYPE_3__* HashJoinTuple ;
typedef  TYPE_4__* HashJoinTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ HJTUPLE_OVERHEAD ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 

void
FUNC9(HashJoinTable hashtable,
										TupleTableSlot *slot,
										uint32 hashvalue)
{
	bool		shouldFree;
	MinimalTuple tuple = FUNC1(slot, &shouldFree);
	HashJoinTuple hashTuple;
	dsa_pointer shared;
	int			batchno;
	int			bucketno;

	FUNC2(hashtable, hashvalue, &bucketno, &batchno);
	FUNC0(batchno == hashtable->curbatch);
	hashTuple = FUNC4(hashtable,
										   HJTUPLE_OVERHEAD + tuple->t_len,
										   &shared);
	hashTuple->hashvalue = hashvalue;
	FUNC8(FUNC5(hashTuple), tuple, tuple->t_len);
	FUNC6(FUNC5(hashTuple));
	FUNC3(&hashtable->buckets.shared[bucketno],
							  hashTuple, shared);

	if (shouldFree)
		FUNC7(tuple);
}