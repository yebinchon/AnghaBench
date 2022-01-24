#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double float8 ;
struct TYPE_7__ {int /*<<< orphan*/ * p; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_1__ LSEG ;

/* Variables and functions */
 scalar_t__ FUNC0 (double,double) ; 
 double FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static float8
FUNC3(Point *result, LSEG *on_lseg, LSEG *to_lseg)
{
	Point		point;
	float8		dist,
				d;

	/* First, we handle the case when the line segments are intersecting. */
	if (FUNC2(result, on_lseg, to_lseg))
		return 0.0;

	/*
	 * Then, we find the closest points from the endpoints of the second line
	 * segment, and keep the closest one.
	 */
	dist = FUNC1(result, on_lseg, &to_lseg->p[0]);
	d = FUNC1(&point, on_lseg, &to_lseg->p[1]);
	if (FUNC0(d, dist))
	{
		dist = d;
		if (result != NULL)
			*result = point;
	}

	/* The closest point can still be one of the endpoints, so we test them. */
	d = FUNC1(NULL, to_lseg, &on_lseg->p[0]);
	if (FUNC0(d, dist))
	{
		dist = d;
		if (result != NULL)
			*result = on_lseg->p[0];
	}
	d = FUNC1(NULL, to_lseg, &on_lseg->p[1]);
	if (FUNC0(d, dist))
	{
		dist = d;
		if (result != NULL)
			*result = on_lseg->p[1];
	}

	return dist;
}