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
typedef  int Size ;
typedef  int /*<<< orphan*/  SHM_QUEUE ;
typedef  int /*<<< orphan*/  SERIALIZABLEXID ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGET ;
typedef  int /*<<< orphan*/  PREDICATELOCK ;
typedef  int /*<<< orphan*/  OldSerXidControlData ;

/* Variables and functions */
 long MaxBackends ; 
 long FUNC0 () ; 
 int /*<<< orphan*/  NUM_OLDSERXID_BUFFERS ; 
 int PredXactListDataSize ; 
 int /*<<< orphan*/  PredXactListElementDataSize ; 
 int /*<<< orphan*/  RWConflictDataSize ; 
 int RWConflictPoolHeaderDataSize ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (long,int) ; 
 long max_prepared_xacts ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 

Size
FUNC5(void)
{
	Size		size = 0;
	long		max_table_size;

	/* predicate lock target hash table */
	max_table_size = FUNC0();
	size = FUNC2(size, FUNC3(max_table_size,
											 sizeof(PREDICATELOCKTARGET)));

	/* predicate lock hash table */
	max_table_size *= 2;
	size = FUNC2(size, FUNC3(max_table_size,
											 sizeof(PREDICATELOCK)));

	/*
	 * Since NPREDICATELOCKTARGETENTS is only an estimate, add 10% safety
	 * margin.
	 */
	size = FUNC2(size, size / 10);

	/* transaction list */
	max_table_size = MaxBackends + max_prepared_xacts;
	max_table_size *= 10;
	size = FUNC2(size, PredXactListDataSize);
	size = FUNC2(size, FUNC4((Size) max_table_size,
								   PredXactListElementDataSize));

	/* transaction xid table */
	size = FUNC2(size, FUNC3(max_table_size,
											 sizeof(SERIALIZABLEXID)));

	/* rw-conflict pool */
	max_table_size *= 5;
	size = FUNC2(size, RWConflictPoolHeaderDataSize);
	size = FUNC2(size, FUNC4((Size) max_table_size,
								   RWConflictDataSize));

	/* Head for list of finished serializable transactions. */
	size = FUNC2(size, sizeof(SHM_QUEUE));

	/* Shared memory structures for SLRU tracking of old committed xids. */
	size = FUNC2(size, sizeof(OldSerXidControlData));
	size = FUNC2(size, FUNC1(NUM_OLDSERXID_BUFFERS, 0));

	return size;
}