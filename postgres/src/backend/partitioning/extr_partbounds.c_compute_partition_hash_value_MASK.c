#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_4__ {int /*<<< orphan*/  fn_oid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_PARTITION_SEED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64
FUNC6(int partnatts, FmgrInfo *partsupfunc, Oid *partcollation,
							 Datum *values, bool *isnull)
{
	int			i;
	uint64		rowHash = 0;
	Datum		seed = FUNC4(HASH_PARTITION_SEED);

	for (i = 0; i < partnatts; i++)
	{
		/* Nulls are just ignored */
		if (!isnull[i])
		{
			Datum		hash;

			FUNC0(FUNC3(partsupfunc[i].fn_oid));

			/*
			 * Compute hash for each datum value by calling respective
			 * datatype-specific hash functions of each partition key
			 * attribute.
			 */
			hash = FUNC2(&partsupfunc[i], partcollation[i],
									 values[i], seed);

			/* Form a single 64-bit hash value */
			rowHash = FUNC5(rowHash, FUNC1(hash));
		}
	}

	return rowHash;
}