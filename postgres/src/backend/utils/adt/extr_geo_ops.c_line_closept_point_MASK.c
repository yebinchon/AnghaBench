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
typedef  int /*<<< orphan*/  float8 ;
typedef  int /*<<< orphan*/  Point ;
typedef  int /*<<< orphan*/  LINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static float8
FUNC5(Point *result, LINE *line, Point *point)
{
	Point		closept;
	LINE		tmp;

	/*
	 * We drop a perpendicular to find the intersection point.  Ordinarily we
	 * should always find it, but that can fail in the presence of NaN
	 * coordinates, and perhaps even from simple roundoff issues.
	 */
	FUNC1(&tmp, point, FUNC3(line));
	if (!FUNC2(&closept, &tmp, line))
	{
		if (result != NULL)
			*result = *point;

		return FUNC0();
	}

	if (result != NULL)
		*result = closept;

	return FUNC4(&closept, point);
}