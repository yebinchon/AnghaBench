#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int strategy; int ndatums; } ;
typedef  TYPE_1__* PartitionBoundInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
#define  PARTITION_STRATEGY_HASH 130 
#define  PARTITION_STRATEGY_LIST 129 
#define  PARTITION_STRATEGY_RANGE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(PartitionBoundInfo bound)
{
	int			num_indexes;

	FUNC0(bound);

	switch (bound->strategy)
	{
		case PARTITION_STRATEGY_HASH:

			/*
			 * The number of the entries in the indexes array is same as the
			 * greatest modulus.
			 */
			num_indexes = FUNC2(bound);
			break;

		case PARTITION_STRATEGY_LIST:
			num_indexes = bound->ndatums;
			break;

		case PARTITION_STRATEGY_RANGE:
			/* Range partitioned table has an extra index. */
			num_indexes = bound->ndatums + 1;
			break;

		default:
			FUNC1(ERROR, "unexpected partition strategy: %d",
				 (int) bound->strategy);
	}

	return num_indexes;
}