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
struct TYPE_4__ {int /*<<< orphan*/ * rd_indcollation; } ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(Relation index, Oid *constr_procs,
						 Datum *existing_values, bool *existing_isnull,
						 Datum *new_values)
{
	int			indnkeyatts = FUNC1(index);
	int			i;

	for (i = 0; i < indnkeyatts; i++)
	{
		/* Assume the exclusion operators are strict */
		if (existing_isnull[i])
			return false;

		if (!FUNC0(FUNC2(constr_procs[i],
											   index->rd_indcollation[i],
											   existing_values[i],
											   new_values[i])))
			return false;
	}

	return true;
}