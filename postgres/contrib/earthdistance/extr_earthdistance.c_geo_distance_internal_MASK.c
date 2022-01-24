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
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ Point ;

/* Variables and functions */
 int EARTH_RADIUS ; 
 double M_PI ; 
 double TWO_PI ; 
 int FUNC0 (double) ; 
 int FUNC1 (double) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (double) ; 
 int FUNC4 (double) ; 
 double FUNC5 (int) ; 

__attribute__((used)) static double
FUNC6(Point *pt1, Point *pt2)
{
	double		long1,
				lat1,
				long2,
				lat2;
	double		longdiff;
	double		sino;

	/* convert degrees to radians */

	long1 = FUNC2(pt1->x);
	lat1 = FUNC2(pt1->y);

	long2 = FUNC2(pt2->x);
	lat2 = FUNC2(pt2->y);

	/* compute difference in longitudes - want < 180 degrees */
	longdiff = FUNC3(long1 - long2);
	if (longdiff > M_PI)
		longdiff = TWO_PI - longdiff;

	sino = FUNC5(FUNC4(FUNC3(lat1 - lat2) / 2.) * FUNC4(FUNC3(lat1 - lat2) / 2.) +
				FUNC1(lat1) * FUNC1(lat2) * FUNC4(longdiff / 2.) * FUNC4(longdiff / 2.));
	if (sino > 1.)
		sino = 1.;

	return 2. * EARTH_RADIUS * FUNC0(sino);
}