#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
struct TYPE_13__ {int* indexes; int null_index; int default_index; } ;
struct TYPE_12__ {TYPE_4__* boundinfo; } ;
struct TYPE_11__ {TYPE_3__* partdesc; TYPE_1__* key; } ;
struct TYPE_10__ {int strategy; int partnatts; int /*<<< orphan*/  partcollation; int /*<<< orphan*/  partsupfunc; } ;
typedef  TYPE_1__* PartitionKey ;
typedef  TYPE_2__* PartitionDispatch ;
typedef  TYPE_3__* PartitionDesc ;
typedef  TYPE_4__* PartitionBoundInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  PARTITION_STRATEGY_HASH 130 
#define  PARTITION_STRATEGY_LIST 129 
#define  PARTITION_STRATEGY_RANGE 128 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC6(PartitionDispatch pd, Datum *values, bool *isnull)
{
	int			bound_offset;
	int			part_index = -1;
	PartitionKey key = pd->key;
	PartitionDesc partdesc = pd->partdesc;
	PartitionBoundInfo boundinfo = partdesc->boundinfo;

	/* Route as appropriate based on partitioning strategy. */
	switch (key->strategy)
	{
		case PARTITION_STRATEGY_HASH:
			{
				int			greatest_modulus;
				uint64		rowHash;

				greatest_modulus = FUNC2(boundinfo);
				rowHash = FUNC0(key->partnatts,
													   key->partsupfunc,
													   key->partcollation,
													   values, isnull);

				part_index = boundinfo->indexes[rowHash % greatest_modulus];
			}
			break;

		case PARTITION_STRATEGY_LIST:
			if (isnull[0])
			{
				if (FUNC3(boundinfo))
					part_index = boundinfo->null_index;
			}
			else
			{
				bool		equal = false;

				bound_offset = FUNC4(key->partsupfunc,
													  key->partcollation,
													  boundinfo,
													  values[0], &equal);
				if (bound_offset >= 0 && equal)
					part_index = boundinfo->indexes[bound_offset];
			}
			break;

		case PARTITION_STRATEGY_RANGE:
			{
				bool		equal = false,
							range_partkey_has_null = false;
				int			i;

				/*
				 * No range includes NULL, so this will be accepted by the
				 * default partition if there is one, and otherwise rejected.
				 */
				for (i = 0; i < key->partnatts; i++)
				{
					if (isnull[i])
					{
						range_partkey_has_null = true;
						break;
					}
				}

				if (!range_partkey_has_null)
				{
					bound_offset = FUNC5(key->partsupfunc,
																 key->partcollation,
																 boundinfo,
																 key->partnatts,
																 values,
																 &equal);

					/*
					 * The bound at bound_offset is less than or equal to the
					 * tuple value, so the bound at offset+1 is the upper
					 * bound of the partition we're looking for, if there
					 * actually exists one.
					 */
					part_index = boundinfo->indexes[bound_offset + 1];
				}
			}
			break;

		default:
			FUNC1(ERROR, "unexpected partition strategy: %d",
				 (int) key->strategy);
	}

	/*
	 * part_index < 0 means we failed to find a partition of this parent. Use
	 * the default partition, if there is one.
	 */
	if (part_index < 0)
		part_index = boundinfo->default_index;

	return part_index;
}