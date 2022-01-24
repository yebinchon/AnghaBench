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
struct TYPE_3__ {int /*<<< orphan*/  sk_argument; } ;
typedef  TYPE_1__* ScanKey ;
typedef  int /*<<< orphan*/  Point ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 double FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

double *
FUNC5(Datum key, bool isLeaf,
						   ScanKey orderbys, int norderbys)
{
	int			sk_num;
	double	   *distances = (double *) FUNC2(norderbys * sizeof(double)),
			   *distance = distances;

	for (sk_num = 0; sk_num < norderbys; ++sk_num, ++orderbys, ++distance)
	{
		Point	   *point = FUNC1(orderbys->sk_argument);

		*distance = isLeaf ? FUNC4(point, FUNC1(key))
			: FUNC3(point, FUNC0(key));
	}

	return distances;
}