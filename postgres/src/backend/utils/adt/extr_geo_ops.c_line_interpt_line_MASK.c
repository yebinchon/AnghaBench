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
typedef  double float8 ;
struct TYPE_4__ {double B; double A; double C; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_1__ LINE ;

/* Variables and functions */
 scalar_t__ FUNC0 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 double FUNC2 (double,double) ; 
 double FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double,double) ; 
 double FUNC5 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double,double) ; 

__attribute__((used)) static bool
FUNC7(Point *result, LINE *l1, LINE *l2)
{
	float8		x,
				y;

	if (!FUNC1(l1->B))
	{
		if (FUNC0(l2->A, FUNC4(l1->A, FUNC2(l2->B, l1->B))))
			return false;

		x = FUNC2(FUNC3(FUNC4(l1->B, l2->C),
								 FUNC4(l2->B, l1->C)),
					   FUNC3(FUNC4(l1->A, l2->B),
								 FUNC4(l2->A, l1->B)));
		y = FUNC2(-FUNC5(FUNC4(l1->A, x), l1->C), l1->B);
	}
	else if (!FUNC1(l2->B))
	{
		if (FUNC0(l1->A, FUNC4(l2->A, FUNC2(l1->B, l2->B))))
			return false;

		x = FUNC2(FUNC3(FUNC4(l2->B, l1->C),
								 FUNC4(l1->B, l2->C)),
					   FUNC3(FUNC4(l2->A, l1->B),
								 FUNC4(l1->A, l2->B)));
		y = FUNC2(-FUNC5(FUNC4(l2->A, x), l2->C), l2->B);
	}
	else
		return false;

	/* On some platforms, the preceding expressions tend to produce -0. */
	if (x == 0.0)
		x = 0.0;
	if (y == 0.0)
		y = 0.0;

	if (result != NULL)
		FUNC6(result, x, y);

	return true;
}