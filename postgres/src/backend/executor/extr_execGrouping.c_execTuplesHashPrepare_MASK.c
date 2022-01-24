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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

void
FUNC6(int numCols,
					  const Oid *eqOperators,
					  Oid **eqFuncOids,
					  FmgrInfo **hashFunctions)
{
	int			i;

	*eqFuncOids = (Oid *) FUNC5(numCols * sizeof(Oid));
	*hashFunctions = (FmgrInfo *) FUNC5(numCols * sizeof(FmgrInfo));

	for (i = 0; i < numCols; i++)
	{
		Oid			eq_opr = eqOperators[i];
		Oid			eq_function;
		Oid			left_hash_function;
		Oid			right_hash_function;

		eq_function = FUNC4(eq_opr);
		if (!FUNC3(eq_opr,
								   &left_hash_function, &right_hash_function))
			FUNC1(ERROR, "could not find hash function for hash operator %u",
				 eq_opr);
		/* We're not supporting cross-type cases here */
		FUNC0(left_hash_function == right_hash_function);
		(*eqFuncOids)[i] = eq_function;
		FUNC2(right_hash_function, &(*hashFunctions)[i]);
	}
}