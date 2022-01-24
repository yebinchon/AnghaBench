#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* partopcintype; scalar_t__* parttypid; int /*<<< orphan*/ * partopfamily; } ;
typedef  int /*<<< orphan*/  StrategyNumber ;
typedef  TYPE_1__* PartitionKey ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RECORDOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC4(PartitionKey key, int col, StrategyNumber strategy,
					   bool *need_relabel)
{
	Oid			operoid;

	/*
	 * Get the operator in the partitioning opfamily using the opclass'
	 * declared input type as both left- and righttype.
	 */
	operoid = FUNC3(key->partopfamily[col],
								  key->partopcintype[col],
								  key->partopcintype[col],
								  strategy);
	if (!FUNC1(operoid))
		FUNC2(ERROR, "missing operator %d(%u,%u) in partition opfamily %u",
			 strategy, key->partopcintype[col], key->partopcintype[col],
			 key->partopfamily[col]);

	/*
	 * If the partition key column is not of the same type as the operator
	 * class and not polymorphic, tell caller to wrap the non-Const expression
	 * in a RelabelType.  This matches what parse_coerce.c does.
	 */
	*need_relabel = (key->parttypid[col] != key->partopcintype[col] &&
					 key->partopcintype[col] != RECORDOID &&
					 !FUNC0(key->partopcintype[col]));

	return operoid;
}