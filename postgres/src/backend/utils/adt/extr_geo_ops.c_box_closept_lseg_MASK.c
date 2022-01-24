#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  double float8 ;
struct TYPE_12__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_11__ {TYPE_3__ high; TYPE_3__ low; } ;
struct TYPE_10__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ Point ;
typedef  int /*<<< orphan*/  LSEG ;
typedef  TYPE_2__ BOX ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (double,double) ; 
 double FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*) ; 

__attribute__((used)) static float8
FUNC4(Point *result, BOX *box, LSEG *lseg)
{
	float8		dist,
				d;
	Point		point,
				closept;
	LSEG		bseg;

	if (FUNC0(result, box, lseg))
		return 0.0;

	/* pairwise check lseg distances */
	point.x = box->low.x;
	point.y = box->high.y;
	FUNC3(&bseg, &box->low, &point);
	dist = FUNC2(result, &bseg, lseg);

	FUNC3(&bseg, &box->high, &point);
	d = FUNC2(&closept, &bseg, lseg);
	if (FUNC1(d, dist))
	{
		dist = d;
		if (result != NULL)
			*result = closept;
	}

	point.x = box->high.x;
	point.y = box->low.y;
	FUNC3(&bseg, &box->low, &point);
	d = FUNC2(&closept, &bseg, lseg);
	if (FUNC1(d, dist))
	{
		dist = d;
		if (result != NULL)
			*result = closept;
	}

	FUNC3(&bseg, &box->high, &point);
	d = FUNC2(&closept, &bseg, lseg);
	if (FUNC1(d, dist))
	{
		dist = d;
		if (result != NULL)
			*result = closept;
	}

	return dist;
}