#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* values; } ;
typedef  TYPE_1__ int2vector ;
typedef  int int16 ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_index_indoption ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool
FUNC3(HeapTuple tuple, int attno, bool guard,
			   int16 iopt_mask, int16 iopt_expect,
			   bool *res)
{
	Datum		datum;
	bool		isnull;
	int2vector *indoption;
	int16		indoption_val;

	if (!guard)
	{
		*res = false;
		return true;
	}

	datum = FUNC2(INDEXRELID, tuple,
							Anum_pg_index_indoption, &isnull);
	FUNC0(!isnull);

	indoption = ((int2vector *) FUNC1(datum));
	indoption_val = indoption->values[attno - 1];

	*res = (indoption_val & iopt_mask) == iopt_expect;

	return true;
}