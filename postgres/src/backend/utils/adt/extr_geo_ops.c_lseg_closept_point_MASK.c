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
typedef  int /*<<< orphan*/  float8 ;
struct TYPE_4__ {int /*<<< orphan*/ * p; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_1__ LSEG ;
typedef  int /*<<< orphan*/  LINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static float8
FUNC4(Point *result, LSEG *lseg, Point *pt)
{
	Point		closept;
	LINE		tmp;

	/*
	 * To find the closest point, we draw a perpendicular line from the point
	 * to the line segment.
	 */
	FUNC0(&tmp, pt, FUNC3(&lseg->p[0], &lseg->p[1]));
	FUNC1(&closept, lseg, &tmp);

	if (result != NULL)
		*result = closept;

	return FUNC2(&closept, pt);
}