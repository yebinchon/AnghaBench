#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tupattnum; TYPE_1__* attr; } ;
typedef  TYPE_2__ VacAttrStats ;
struct TYPE_6__ {int /*<<< orphan*/  attisdropped; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 

__attribute__((used)) static VacAttrStats **
FUNC5(Relation rel, Bitmapset *attrs,
					  int nvacatts, VacAttrStats **vacatts)
{
	int			i = 0;
	int			x = -1;
	VacAttrStats **stats;

	stats = (VacAttrStats **)
		FUNC3(FUNC2(attrs) * sizeof(VacAttrStats *));

	/* lookup VacAttrStats info for the requested columns (same attnum) */
	while ((x = FUNC1(attrs, x)) >= 0)
	{
		int			j;

		stats[i] = NULL;
		for (j = 0; j < nvacatts; j++)
		{
			if (x == vacatts[j]->tupattnum)
			{
				stats[i] = vacatts[j];
				break;
			}
		}

		if (!stats[i])
		{
			/*
			 * Looks like stats were not gathered for one of the columns
			 * required. We'll be unable to build the extended stats without
			 * this column.
			 */
			FUNC4(stats);
			return NULL;
		}

		/*
		 * Sanity check that the column is not dropped - stats should have
		 * been removed in this case.
		 */
		FUNC0(!stats[i]->attr->attisdropped);

		i++;
	}

	return stats;
}