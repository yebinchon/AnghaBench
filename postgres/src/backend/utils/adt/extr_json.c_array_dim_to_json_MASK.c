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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  JsonTypeCategory ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(StringInfo result, int dim, int ndims, int *dims, Datum *vals,
				  bool *nulls, int *valcount, JsonTypeCategory tcategory,
				  Oid outfuncoid, bool use_line_feeds)
{
	int			i;
	const char *sep;

	FUNC0(dim < ndims);

	sep = use_line_feeds ? ",\n " : ",";

	FUNC1(result, '[');

	for (i = 1; i <= dims[dim]; i++)
	{
		if (i > 1)
			FUNC2(result, sep);

		if (dim + 1 == ndims)
		{
			FUNC3(vals[*valcount], nulls[*valcount], result, tcategory,
						  outfuncoid, false);
			(*valcount)++;
		}
		else
		{
			/*
			 * Do we want line feeds on inner dimensions of arrays? For now
			 * we'll say no.
			 */
			FUNC4(result, dim + 1, ndims, dims, vals, nulls,
							  valcount, tcategory, outfuncoid, false);
		}
	}

	FUNC1(result, ']');
}