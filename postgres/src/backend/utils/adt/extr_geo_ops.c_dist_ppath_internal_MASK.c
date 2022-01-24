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
typedef  double float8 ;
struct TYPE_3__ {int npts; int /*<<< orphan*/ * p; int /*<<< orphan*/  closed; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_1__ PATH ;
typedef  int /*<<< orphan*/  LSEG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (double,double) ; 
 double FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static float8
FUNC4(Point *pt, PATH *path)
{
	float8		result = 0.0;	/* keep compiler quiet */
	bool		have_min = false;
	float8		tmp;
	int			i;
	LSEG		lseg;

	FUNC0(path->npts > 0);

	/*
	 * The distance from a point to a path is the smallest distance from the
	 * point to any of its constituent segments.
	 */
	for (i = 0; i < path->npts; i++)
	{
		int			iprev;

		if (i > 0)
			iprev = i - 1;
		else
		{
			if (!path->closed)
				continue;
			iprev = path->npts - 1; /* Include the closure segment */
		}

		FUNC3(&lseg, &path->p[iprev], &path->p[i]);
		tmp = FUNC2(NULL, &lseg, pt);
		if (!have_min || FUNC1(tmp, result))
		{
			result = tmp;
			have_min = true;
		}
	}

	return result;
}