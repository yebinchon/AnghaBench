#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dshash_table_control ;
struct TYPE_11__ {int tranche_id; } ;
struct TYPE_9__ {int find_locked; int find_exclusively_locked; TYPE_1__* control; int /*<<< orphan*/  size_log2; void* buckets; void* arg; TYPE_4__ params; int /*<<< orphan*/ * area; } ;
typedef  TYPE_2__ dshash_table ;
struct TYPE_10__ {scalar_t__ count; int /*<<< orphan*/  lock; } ;
typedef  TYPE_3__ dshash_partition ;
typedef  TYPE_4__ dshash_parameters ;
typedef  int /*<<< orphan*/  dsa_pointer ;
typedef  int /*<<< orphan*/  dsa_area ;
struct TYPE_8__ {int lwlock_tranche_id; int /*<<< orphan*/  size_log2; int /*<<< orphan*/  buckets; TYPE_3__* partitions; int /*<<< orphan*/  magic; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int DSA_ALLOC_NO_OOM ; 
 int DSA_ALLOC_ZERO ; 
 int /*<<< orphan*/  DSHASH_MAGIC ; 
 int DSHASH_NUM_PARTITIONS ; 
 int /*<<< orphan*/  DSHASH_NUM_PARTITIONS_LOG2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_2__* FUNC10 (int) ; 

dshash_table *
FUNC11(dsa_area *area, const dshash_parameters *params, void *arg)
{
	dshash_table *hash_table;
	dsa_pointer control;

	/* Allocate the backend-local object representing the hash table. */
	hash_table = FUNC10(sizeof(dshash_table));

	/* Allocate the control object in shared memory. */
	control = FUNC2(area, sizeof(dshash_table_control));

	/* Set up the local and shared hash table structs. */
	hash_table->area = area;
	hash_table->params = *params;
	hash_table->arg = arg;
	hash_table->control = FUNC5(area, control);
	hash_table->control->handle = control;
	hash_table->control->magic = DSHASH_MAGIC;
	hash_table->control->lwlock_tranche_id = params->tranche_id;

	/* Set up the array of lock partitions. */
	{
		dshash_partition *partitions = hash_table->control->partitions;
		int			tranche_id = hash_table->control->lwlock_tranche_id;
		int			i;

		for (i = 0; i < DSHASH_NUM_PARTITIONS; ++i)
		{
			FUNC1(&partitions[i].lock, tranche_id);
			partitions[i].count = 0;
		}
	}

	hash_table->find_locked = false;
	hash_table->find_exclusively_locked = false;

	/*
	 * Set up the initial array of buckets.  Our initial size is the same as
	 * the number of partitions.
	 */
	hash_table->control->size_log2 = DSHASH_NUM_PARTITIONS_LOG2;
	hash_table->control->buckets =
		FUNC3(area,
							  sizeof(dsa_pointer) * DSHASH_NUM_PARTITIONS,
							  DSA_ALLOC_NO_OOM | DSA_ALLOC_ZERO);
	if (!FUNC0(hash_table->control->buckets))
	{
		FUNC4(area, control);
		FUNC6(ERROR,
				(FUNC7(ERRCODE_OUT_OF_MEMORY),
				 FUNC9("out of memory"),
				 FUNC8("Failed on DSA request of size %zu.",
						   sizeof(dsa_pointer) * DSHASH_NUM_PARTITIONS)));
	}
	hash_table->buckets = FUNC5(area,
										  hash_table->control->buckets);
	hash_table->size_log2 = hash_table->control->size_log2;

	return hash_table;
}