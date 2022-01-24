#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * myXact; TYPE_1__* myTarget; } ;
struct TYPE_9__ {TYPE_2__ tag; } ;
struct TYPE_8__ {int nelements; int /*<<< orphan*/ * xacts; int /*<<< orphan*/ * locktags; } ;
struct TYPE_6__ {int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  SERIALIZABLEXACT ;
typedef  TYPE_3__ PredicateLockData ;
typedef  int /*<<< orphan*/  PREDICATELOCKTARGETTAG ;
typedef  TYPE_4__ PREDICATELOCK ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int NUM_PREDICATELOCK_PARTITIONS ; 
 int /*<<< orphan*/  PredicateLockHash ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SerializableXactHashLock ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

PredicateLockData *
FUNC8(void)
{
	PredicateLockData *data;
	int			i;
	int			els,
				el;
	HASH_SEQ_STATUS seqstat;
	PREDICATELOCK *predlock;

	data = (PredicateLockData *) FUNC7(sizeof(PredicateLockData));

	/*
	 * To ensure consistency, take simultaneous locks on all partition locks
	 * in ascending order, then SerializableXactHashLock.
	 */
	for (i = 0; i < NUM_PREDICATELOCK_PARTITIONS; i++)
		FUNC1(FUNC3(i), LW_SHARED);
	FUNC1(SerializableXactHashLock, LW_SHARED);

	/* Get number of locks and allocate appropriately-sized arrays. */
	els = FUNC4(PredicateLockHash);
	data->nelements = els;
	data->locktags = (PREDICATELOCKTARGETTAG *)
		FUNC7(sizeof(PREDICATELOCKTARGETTAG) * els);
	data->xacts = (SERIALIZABLEXACT *)
		FUNC7(sizeof(SERIALIZABLEXACT) * els);


	/* Scan through PredicateLockHash and copy contents */
	FUNC5(&seqstat, PredicateLockHash);

	el = 0;

	while ((predlock = (PREDICATELOCK *) FUNC6(&seqstat)))
	{
		data->locktags[el] = predlock->tag.myTarget->tag;
		data->xacts[el] = *predlock->tag.myXact;
		el++;
	}

	FUNC0(el == els);

	/* Release locks in reverse order */
	FUNC2(SerializableXactHashLock);
	for (i = NUM_PREDICATELOCK_PARTITIONS - 1; i >= 0; i--)
		FUNC2(FUNC3(i));

	return data;
}