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
typedef  int /*<<< orphan*/  key ;
struct TYPE_8__ {int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_self; } ;
struct TYPE_7__ {int /*<<< orphan*/  cmax; int /*<<< orphan*/  cmin; } ;
struct TYPE_6__ {int /*<<< orphan*/  tid; int /*<<< orphan*/  relnode; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_1__ ReorderBufferTupleCidKey ;
typedef  TYPE_2__ ReorderBufferTupleCidEnt ;
typedef  TYPE_3__* HeapTuple ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  scalar_t__ ForkNumber ;
typedef  int /*<<< orphan*/  CommandId ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

bool
FUNC8(HTAB *tuplecid_data,
							  Snapshot snapshot,
							  HeapTuple htup, Buffer buffer,
							  CommandId *cmin, CommandId *cmax)
{
	ReorderBufferTupleCidKey key;
	ReorderBufferTupleCidEnt *ent;
	ForkNumber	forkno;
	BlockNumber blockno;
	bool		updated_mapping = false;

	/* be careful about padding */
	FUNC7(&key, 0, sizeof(key));

	FUNC0(!FUNC2(buffer));

	/*
	 * get relfilenode from the buffer, no convenient way to access it other
	 * than that.
	 */
	FUNC1(buffer, &key.relnode, &forkno, &blockno);

	/* tuples can only be in the main fork */
	FUNC0(forkno == MAIN_FORKNUM);
	FUNC0(blockno == FUNC4(&htup->t_self));

	FUNC3(&htup->t_self,
					&key.tid);

restart:
	ent = (ReorderBufferTupleCidEnt *)
		FUNC6(tuplecid_data,
					(void *) &key,
					HASH_FIND,
					NULL);

	/*
	 * failed to find a mapping, check whether the table was rewritten and
	 * apply mapping if so, but only do that once - there can be no new
	 * mappings while we are in here since we have to hold a lock on the
	 * relation.
	 */
	if (ent == NULL && !updated_mapping)
	{
		FUNC5(tuplecid_data, htup->t_tableOid, snapshot);
		/* now check but don't update for a mapping again */
		updated_mapping = true;
		goto restart;
	}
	else if (ent == NULL)
		return false;

	if (cmin)
		*cmin = ent->cmin;
	if (cmax)
		*cmax = ent->cmax;
	return true;
}