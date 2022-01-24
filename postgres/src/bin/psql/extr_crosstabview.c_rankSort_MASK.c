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
struct TYPE_3__ {char* sort_value; int rank; } ;
typedef  TYPE_1__ pivot_field ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rankCompare ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(int num_columns, pivot_field *piv_columns)
{
	int		   *hmap;			/* [[offset in piv_columns, rank], ...for
								 * every header entry] */
	int			i;

	hmap = (int *) FUNC2(sizeof(int) * num_columns * 2);
	for (i = 0; i < num_columns; i++)
	{
		char	   *val = piv_columns[i].sort_value;

		/* ranking information is valid if non null and matches /^-?\d+$/ */
		if (val &&
			((*val == '-' &&
			  FUNC5(val + 1, "0123456789") == FUNC4(val + 1)) ||
			 FUNC5(val, "0123456789") == FUNC4(val)))
		{
			hmap[i * 2] = FUNC0(val);
			hmap[i * 2 + 1] = i;
		}
		else
		{
			/* invalid rank information ignored (equivalent to rank 0) */
			hmap[i * 2] = 0;
			hmap[i * 2 + 1] = i;
		}
	}

	FUNC3(hmap, num_columns, sizeof(int) * 2, rankCompare);

	for (i = 0; i < num_columns; i++)
	{
		piv_columns[hmap[i * 2 + 1]].rank = i;
	}

	FUNC1(hmap);
}