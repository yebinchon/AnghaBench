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
struct TYPE_4__ {int /*<<< orphan*/  parseState; void* res; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  JsonbTypeCategory ;
typedef  TYPE_1__ JsonbInState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WJB_BEGIN_ARRAY ; 
 int /*<<< orphan*/  WJB_END_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(JsonbInState *result, int dim, int ndims, int *dims, Datum *vals,
				   bool *nulls, int *valcount, JsonbTypeCategory tcategory,
				   Oid outfuncoid)
{
	int			i;

	FUNC0(dim < ndims);

	result->res = FUNC2(&result->parseState, WJB_BEGIN_ARRAY, NULL);

	for (i = 1; i <= dims[dim]; i++)
	{
		if (dim + 1 == ndims)
		{
			FUNC1(vals[*valcount], nulls[*valcount], result, tcategory,
						   outfuncoid, false);
			(*valcount)++;
		}
		else
		{
			FUNC3(result, dim + 1, ndims, dims, vals, nulls,
							   valcount, tcategory, outfuncoid);
		}
	}

	result->res = FUNC2(&result->parseState, WJB_END_ARRAY, NULL);
}