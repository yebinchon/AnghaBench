#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_8__ {int* values; int /*<<< orphan*/  dim1; } ;
typedef  TYPE_1__ int2vector ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_11__ {scalar_t__ attisdropped; } ;
struct TYPE_10__ {TYPE_2__* rd_att; } ;
struct TYPE_9__ {int natts; } ;
typedef  TYPE_3__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(Relation rel,
				   int2vector *pkattnums_arg, int32 pknumatts_arg,
				   int **pkattnums, int *pknumatts)
{
	TupleDesc	tupdesc = rel->rd_att;
	int			natts = tupdesc->natts;
	int			i;

	/* Don't take more array elements than there are */
	pknumatts_arg = FUNC0(pknumatts_arg, pkattnums_arg->dim1);

	/* Must have at least one pk attnum selected */
	if (pknumatts_arg <= 0)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC4("number of key attributes must be > 0")));

	/* Allocate output array */
	*pkattnums = (int *) FUNC5(pknumatts_arg * sizeof(int));
	*pknumatts = pknumatts_arg;

	/* Validate attnums and convert to internal form */
	for (i = 0; i < pknumatts_arg; i++)
	{
		int			pkattnum = pkattnums_arg->values[i];
		int			lnum;
		int			j;

		/* Can throw error immediately if out of range */
		if (pkattnum <= 0 || pkattnum > natts)
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC4("invalid attribute number %d", pkattnum)));

		/* Identify which physical column has this logical number */
		lnum = 0;
		for (j = 0; j < natts; j++)
		{
			/* dropped columns don't count */
			if (FUNC1(tupdesc, j)->attisdropped)
				continue;

			if (++lnum == pkattnum)
				break;
		}

		if (j < natts)
			(*pkattnums)[i] = j;
		else
			FUNC2(ERROR,
					(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC4("invalid attribute number %d", pkattnum)));
	}
}