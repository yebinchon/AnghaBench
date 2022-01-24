#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int const strategy; } ;
struct TYPE_8__ {int strategy; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* PartitionKey ;
typedef  TYPE_2__ PartitionBoundSpec ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
#define  PARTITION_STRATEGY_HASH 130 
#define  PARTITION_STRATEGY_LIST 129 
#define  PARTITION_STRATEGY_RANGE 128 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 

List *
FUNC6(Relation rel, Relation parent,
						PartitionBoundSpec *spec)
{
	PartitionKey key = FUNC1(parent);
	List	   *my_qual = NIL;

	FUNC0(key != NULL);

	switch (key->strategy)
	{
		case PARTITION_STRATEGY_HASH:
			FUNC0(spec->strategy == PARTITION_STRATEGY_HASH);
			my_qual = FUNC3(parent, spec);
			break;

		case PARTITION_STRATEGY_LIST:
			FUNC0(spec->strategy == PARTITION_STRATEGY_LIST);
			my_qual = FUNC4(parent, spec);
			break;

		case PARTITION_STRATEGY_RANGE:
			FUNC0(spec->strategy == PARTITION_STRATEGY_RANGE);
			my_qual = FUNC5(parent, spec, false);
			break;

		default:
			FUNC2(ERROR, "unexpected partition strategy: %d",
				 (int) key->strategy);
	}

	return my_qual;
}