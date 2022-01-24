#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int strategy; } ;
typedef  TYPE_1__* PartitionKey ;
typedef  int /*<<< orphan*/  PartitionBoundSpec ;
typedef  int /*<<< orphan*/ * PartitionBoundInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
#define  PARTITION_STRATEGY_HASH 130 
#define  PARTITION_STRATEGY_LIST 129 
#define  PARTITION_STRATEGY_RANGE 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int,TYPE_1__*,int**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int,TYPE_1__*,int**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,int,TYPE_1__*,int**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int) ; 

PartitionBoundInfo
FUNC6(PartitionBoundSpec **boundspecs, int nparts,
						PartitionKey key, int **mapping)
{
	int			i;

	FUNC0(nparts > 0);

	/*
	 * For each partitioning method, we first convert the partition bounds
	 * from their parser node representation to the internal representation,
	 * along with any additional preprocessing (such as de-duplicating range
	 * bounds).  Resulting bound datums are then added to the 'datums' array
	 * in PartitionBoundInfo.  For each datum added, an integer indicating the
	 * canonical partition index is added to the 'indexes' array.
	 *
	 * For each bound, we remember its partition's position (0-based) in the
	 * original list to later map it to the canonical index.
	 */

	/*
	 * Initialize mapping array with invalid values, this is filled within
	 * each sub-routine below depending on the bound type.
	 */
	*mapping = (int *) FUNC5(sizeof(int) * nparts);
	for (i = 0; i < nparts; i++)
		(*mapping)[i] = -1;

	switch (key->strategy)
	{
		case PARTITION_STRATEGY_HASH:
			return FUNC1(boundspecs, nparts, key, mapping);

		case PARTITION_STRATEGY_LIST:
			return FUNC2(boundspecs, nparts, key, mapping);

		case PARTITION_STRATEGY_RANGE:
			return FUNC3(boundspecs, nparts, key, mapping);

		default:
			FUNC4(ERROR, "unexpected partition strategy: %d",
				 (int) key->strategy);
			break;
	}

	FUNC0(false);
	return NULL;				/* keep compiler quiet */
}