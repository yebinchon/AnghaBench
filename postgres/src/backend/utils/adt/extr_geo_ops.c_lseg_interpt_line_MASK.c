#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * p; } ;
typedef  int /*<<< orphan*/  Point ;
typedef  TYPE_1__ LSEG ;
typedef  int /*<<< orphan*/  LINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(Point *result, LSEG *lseg, LINE *line)
{
	Point		interpt;
	LINE		tmp;

	/*
	 * First, we promote the line segment to a line, because we know how to
	 * find the intersection point of two lines.  If they don't have an
	 * intersection point, we are done.
	 */
	FUNC0(&tmp, &lseg->p[0], FUNC3(lseg));
	if (!FUNC1(&interpt, &tmp, line))
		return false;

	/*
	 * Then, we check whether the intersection point is actually on the line
	 * segment.
	 */
	if (!FUNC2(lseg, &interpt))
		return false;
	if (result != NULL)
	{
		/*
		 * If there is an intersection, then check explicitly for matching
		 * endpoints since there may be rounding effects with annoying LSB
		 * residue.
		 */
		if (FUNC4(&lseg->p[0], &interpt))
			*result = lseg->p[0];
		else if (FUNC4(&lseg->p[1], &interpt))
			*result = lseg->p[1];
		else
			*result = interpt;
	}

	return true;
}